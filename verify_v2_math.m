%% verify_v2_math.m  (run as: verify_v2_math())
% Implements the same forward pass as vit_tiny_simulink_v2 in pure MATLAB,
% using:
%   - native layer weights from nativeNet for conv/ln/fc/gelu layers
%   - ONNX weights from vit_weights.mat for the custom attention blocks
%   - exact same MATLAB Function block code for all 16 custom ops
%
% Compares final 1000-class logits against nativeNet.predict() to validate
% that the Simulink v2 math is correct.

function verify_v2_math()

projectDir = '/Users/arkadiyturevskiy/Documents/Claude/PyTorch_Import_2/Model1';
cd(projectDir);
fprintf('=== verify_v2_math: Simulink v2 math vs native dlnetwork ===\n\n');

rng(42);
testImg = single(randn(224, 224, 3));

%% Load assets
fprintf('Loading assets...\n');
load('vit_native_net.mat', 'nativeNet');
W = load('vit_weights.mat');  % struct with ONNX weight tensors

%% Reference from native dlnetwork
testDl    = dlarray(reshape(testImg,[224,224,3,1]),'SSCB');
nativeOut = predict(nativeNet, testDl);
refLogits = double(extractdata(nativeOut));
[~, refTop1] = max(refLogits(:));
fprintf('Reference top-1: class %d  (logit=%.4f)\n\n', refTop1, refLogits(refTop1));

%% ---- Manual forward pass ----

% --- patch_conv (native Conv2D, stride 16, 192 filters) ---
cvL = nativeNet.Layers(2);   % patch_conv
% Run conv2d manually using the native layer weights
% Filters: [16,16,3,192], bias: [192,1]
Wconv = double(cvL.Weights);  % [16,16,3,192]
Bconv = double(cvL.Bias);     % [192,1]
% Perform valid convolution with stride 16
imgD = double(testImg);  % [224,224,3]
H=14; W_t=14; C=192; P=16;
convOut = zeros(H, W_t, C);
for c = 1:C
    filt = squeeze(Wconv(:,:,:,c));  % [16,16,3]
    for i = 1:H
        for j = 1:W_t
            patch = imgD((i-1)*P+1:i*P, (j-1)*P+1:j*P, :);  % [16,16,3]
            convOut(i,j,c) = sum(filt(:).*patch(:)) + Bconv(c);
        end
    end
end
convOut = single(convOut);  % [14,14,192]

% --- patch_flatten (custom: permute [3,2,1], reshape [192,196]) ---
Xp = permute(convOut, [3,2,1]);       % [192,14,14]
X  = reshape(Xp, 192, 196);          % [192,196]

% --- cls_prepend (custom: prepend CLS token) ---
clsVal = single(reshape(double(squeeze(W.cls_token)), 192, 1));
X = [clsVal, X];                     % [192,197]

% --- pos_embed (custom: add position embedding) ---
posVal = single(squeeze(double(W.pos_embed))');  % [192,197]
X = X + posVal;                      % [192,197]

% --- 12 Transformer blocks ---
qkvIdx = [1095 1109 1123 1137 1151 1165 1179 1193 1207 1221 1235 1249];
outIdx = [1106 1120 1134 1148 1162 1176 1190 1204 1218 1232 1246 1260];

fprintf('Running 12 transformer blocks...\n');
for b = 0:11
    bi = b+1;
    iLN1 = 6+b*8;  iLN2 = 9+b*8;  iFC1 = 10+b*8;  iFC2 = 12+b*8;
    ln1L = nativeNet.Layers(iLN1);
    ln2L = nativeNet.Layers(iLN2);
    fc1L = nativeNet.Layers(iFC1);
    fc2L = nativeNet.Layers(iFC2);

    % LN1
    ln1_out = ln_fwd(X, single(ln1L.Scale), single(ln1L.Offset));

    % Attention (our code from Simulink MATLAB Function block)
    wqkv = single(double(W.(sprintf('onnx__MatMul_%d',qkvIdx(bi))))');  % [576,192]
    bqkv = single(reshape(double(W.(sprintf('blocks_%d_attn_qkv_bias',b))),576,1));
    wout = single(double(W.(sprintf('onnx__MatMul_%d',outIdx(bi))))');   % [192,192]
    bout = single(reshape(double(W.(sprintf('blocks_%d_attn_proj_bias',b))),192,1));
    attn_out = mha(ln1_out, wqkv, bqkv, wout, bout);  % [192,197]

    % Add1
    X2 = X + attn_out;

    % LN2
    ln2_out = ln_fwd(X2, single(ln2L.Scale), single(ln2L.Offset));

    % FC1 + GELU
    h = single(fc1L.Weights)*ln2_out + single(fc1L.Bias);   % [768,197]
    h = single(h .* (0.5*(1+erf(double(h)/sqrt(2)))));       % GELU

    % FC2
    mlp = single(fc2L.Weights)*h + single(fc2L.Bias);       % [192,197]

    % Add2
    X = X2 + mlp;
end

% --- final_ln ---
fnL = nativeNet.Layers(102);
X   = ln_fwd(X, single(fnL.Scale), single(fnL.Offset));

% --- cls_extract (our code: Y = X(:,1)) ---
cls = X(:,1);  % [192,1]

% --- head ---
hL  = nativeNet.Layers(104);
ourLogits = double(single(hL.Weights)*cls + single(hL.Bias));  % [1000,1]

[~, ourTop1] = max(ourLogits(:));

%% Summary
logitMaxDiff  = max(abs(ourLogits(:) - refLogits(:)));
logitMeanDiff = mean(abs(ourLogits(:) - refLogits(:)));

fprintf('\n============================================================\n');
fprintf(' Verification results (our math vs nativeNet.predict):\n');
fprintf('   Reference top-1:  class %d\n', refTop1);
fprintf('   Our top-1:        class %d\n', ourTop1);
fprintf('   Top-1 match:      %s\n', mat2str(refTop1 == ourTop1));
fprintf('   Max  logit diff:  %.6e\n', logitMaxDiff);
fprintf('   Mean logit diff:  %.6e\n', logitMeanDiff);
if logitMaxDiff < 0.5
    verdict = 'PASS';
else
    verdict = 'FAIL';
end
fprintf('\n   VERDICT: %s\n', verdict);
fprintf('============================================================\n');

save('verify_v2_math_results.mat','ourLogits','refLogits','logitMaxDiff','logitMeanDiff');
fprintf('Results saved to verify_v2_math_results.mat\n');
end

%% ---- Local helpers ----

function y = ln_fwd(x, gamma, beta)
% Layer norm over rows (C dimension), x:[C,T]
mu  = mean(x, 1);
sig = std(x, 1, 1);
y   = ((x - mu) ./ (sig + single(1e-5))) .* gamma + beta;
end

function Y = mha(X, Wqkv, Bqkv, Wout, Bout)
% 3-head MHA (exact code from Simulink MATLAB Function block)
scale = single(0.125);
QKV = Wqkv*X + repmat(Bqkv,1,197);
Q=QKV(1:192,:);  K=QKV(193:384,:);  V=QKV(385:576,:);
Q1=Q(1:64,:);   K1=K(1:64,:);   V1=V(1:64,:);
Q2=Q(65:128,:); K2=K(65:128,:); V2=V(65:128,:);
Q3=Q(129:192,:);K3=K(129:192,:);V3=V(129:192,:);
sc1=Q1'*K1*scale; sm1=max(sc1,[],2); se1=exp(sc1-sm1); at1=se1./sum(se1,2); h1=V1*at1';
sc2=Q2'*K2*scale; sm2=max(sc2,[],2); se2=exp(sc2-sm2); at2=se2./sum(se2,2); h2=V2*at2';
sc3=Q3'*K3*scale; sm3=max(sc3,[],2); se3=exp(sc3-sm3); at3=se3./sum(se3,2); h3=V3*at3';
Y = Wout*[h1;h2;h3] + repmat(Bout,1,197);
end
