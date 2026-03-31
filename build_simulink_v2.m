%% build_simulink_v2.m  (function file — call as build_simulink_v2())
% Creates vit_tiny_simulink_v2.slx replacing all 16 red placeholder
% subsystems with codegen-compatible implementations.

function build_simulink_v2()

projectDir = '/Users/arkadiyturevskiy/Documents/Claude/PyTorch_Import_2/Model1';
cd(projectDir);

v1Name = 'vit_tiny_simulink';
v2Name = 'vit_tiny_simulink_v2';
v1slx  = fullfile(projectDir, [v1Name '.slx']);
v2slx  = fullfile(projectDir, [v2Name '.slx']);

%% Load ONNX weights
fprintf('Loading weights...\n');
W = load('vit_weights.mat');
fprintf('  %d tensors\n', numel(fieldnames(W)));

%% Copy v1 -> v2
for nm = {v1Name, v2Name}
    if bdIsLoaded(nm{1}), close_system(nm{1}, 0); end
end
if exist(v2slx,'file'), delete(v2slx); end
copyfile(v1slx, v2slx);
load_system(v2slx);
fprintf('Model: %s created\n', v2Name);

netPath = [v2Name '/vit_tiny_simulink_1'];
mdlWs   = get_param(v2Name, 'ModelWorkspace');
rt      = sfroot;

%% 1. patch_flatten: [14,14,192] -> [192,196]
fprintf('\n[1] patch_flatten\n');
subsys = [netPath '/patch_flatten'];
cleanSubs(subsys);

add_block('simulink/User-Defined Functions/MATLAB Function', [subsys '/PatchFlatten']);
ch = getChart(rt, [subsys '/PatchFlatten']);
ch.Script = sprintf([...
    'function Y = patch_flatten_fn(X)\n' ...
    '%%#codegen\n' ...
    'Xp = permute(X, [3,2,1]);\n' ...
    'Y = reshape(Xp, 192, 196);\n']);

add_line(subsys,'in/1',          'PatchFlatten/1','autorouting','on');
add_line(subsys,'PatchFlatten/1','out/1',          'autorouting','on');
fprintf('  OK\n');

%% 2. cls_prepend: [192,196] -> [192,197]
fprintf('[2] cls_prepend\n');
clsVal = single(reshape(double(squeeze(W.cls_token)), 192, 1));
mdlWs.assignin('cls_token_w', clsVal);

subsys = [netPath '/cls_prepend'];
cleanSubs(subsys);

add_block('simulink/Sources/Constant',[subsys '/CLSConst'],...
    'Value','cls_token_w','OutDataTypeStr','single','SampleTime','-1');
add_block('simulink/User-Defined Functions/MATLAB Function',[subsys '/ClsPrepend']);
ch = getChart(rt,[subsys '/ClsPrepend']);
ch.Script = sprintf([...
    'function Y = cls_prepend_fn(X, cls)\n' ...
    '%%#codegen\n' ...
    'Y = [cls, X];\n']);

add_line(subsys,'in/1',        'ClsPrepend/1','autorouting','on');
add_line(subsys,'CLSConst/1',  'ClsPrepend/2','autorouting','on');
add_line(subsys,'ClsPrepend/1','out/1',        'autorouting','on');
fprintf('  OK\n');

%% 3. pos_embed: [192,197] -> [192,197]  (add positional embedding)
fprintf('[3] pos_embed\n');
posVal = single(squeeze(double(W.pos_embed))');   % [192,197]
mdlWs.assignin('pos_embed_w', posVal);

subsys = [netPath '/pos_embed'];
cleanSubs(subsys);

add_block('simulink/Sources/Constant',[subsys '/PosConst'],...
    'Value','pos_embed_w','OutDataTypeStr','single','SampleTime','-1');
add_block('simulink/Math Operations/Sum',[subsys '/PosAdd'],'Inputs','++');

add_line(subsys,'in/1',      'PosAdd/1','autorouting','on');
add_line(subsys,'PosConst/1','PosAdd/2','autorouting','on');
add_line(subsys,'PosAdd/1',  'out/1',   'autorouting','on');
fprintf('  OK\n');

%% 4. cls_extract: [192,197] -> [192,1]
fprintf('[4] cls_extract\n');
subsys = [netPath '/cls_extract'];
cleanSubs(subsys);

add_block('simulink/User-Defined Functions/MATLAB Function',[subsys '/ClsExtract']);
ch = getChart(rt,[subsys '/ClsExtract']);
ch.Script = sprintf([...
    'function Y = cls_extract_fn(X)\n' ...
    '%%#codegen\n' ...
    'Y = X(:, 1);\n']);

add_line(subsys,'in/1',        'ClsExtract/1','autorouting','on');
add_line(subsys,'ClsExtract/1','out/1',         'autorouting','on');
fprintf('  OK\n');

%% 5. Self-attention blocks x12
qkvIdx = [1095 1109 1123 1137 1151 1165 1179 1193 1207 1221 1235 1249];
outIdx = [1106 1120 1134 1148 1162 1176 1190 1204 1218 1232 1246 1260];

% 3-head attention with heads unrolled (codegen-safe, no dynamic indexing)
attnFmt = [...
    'function Y = multihead_attn(X, Wqkv, Bqkv, Wout, Bout)\n' ...
    '%%#codegen\n' ...
    'scale = single(0.125);\n' ...                    % 1/sqrt(64)
    'QKV = Wqkv * X + repmat(Bqkv, 1, 197);\n' ...
    'Q = QKV(1:192,:);\n' ...
    'K = QKV(193:384,:);\n' ...
    'V = QKV(385:576,:);\n' ...
    'Q1=Q(1:64,:);   K1=K(1:64,:);   V1=V(1:64,:);\n' ...
    'Q2=Q(65:128,:); K2=K(65:128,:); V2=V(65:128,:);\n' ...
    'Q3=Q(129:192,:);K3=K(129:192,:);V3=V(129:192,:);\n' ...
    'sc1=(Q1''*K1)*scale; sm1=max(sc1,[],2); se1=exp(sc1-sm1); at1=se1./sum(se1,2); h1=V1*at1'';\n' ...
    'sc2=(Q2''*K2)*scale; sm2=max(sc2,[],2); se2=exp(sc2-sm2); at2=se2./sum(se2,2); h2=V2*at2'';\n' ...
    'sc3=(Q3''*K3)*scale; sm3=max(sc3,[],2); se3=exp(sc3-sm3); at3=se3./sum(se3,2); h3=V3*at3'';\n' ...
    'Y = Wout * [h1;h2;h3] + repmat(Bout, 1, 197);\n'];

for b = 0:11
    bi = b + 1;
    fprintf('[5.%d] block%d_attn\n', bi, b);
    subsys = [netPath '/block' num2str(b) '_attn'];
    cleanSubs(subsys);

    % ONNX weight [192,576] -> transpose -> [576,192]
    wqkv = single(double(W.(sprintf('onnx__MatMul_%d', qkvIdx(bi))))');
    bqkv = single(reshape(double(W.(sprintf('blocks_%d_attn_qkv_bias', b))), 576, 1));
    % ONNX weight [192,192] -> transpose -> [192,192]
    wout = single(double(W.(sprintf('onnx__MatMul_%d', outIdx(bi))))');
    bout = single(reshape(double(W.(sprintf('blocks_%d_attn_proj_bias', b))), 192, 1));

    wn = sprintf('b%d_wqkv',b); mdlWs.assignin(wn, wqkv);
    bn = sprintf('b%d_bqkv',b); mdlWs.assignin(bn, bqkv);
    wo = sprintf('b%d_wout',b); mdlWs.assignin(wo, wout);
    bo = sprintf('b%d_bout',b); mdlWs.assignin(bo, bout);

    add_block('simulink/Sources/Constant',[subsys '/Wqkv'],'Value',wn,'OutDataTypeStr','single','SampleTime','-1');
    add_block('simulink/Sources/Constant',[subsys '/Bqkv'],'Value',bn,'OutDataTypeStr','single','SampleTime','-1');
    add_block('simulink/Sources/Constant',[subsys '/Wout'],'Value',wo,'OutDataTypeStr','single','SampleTime','-1');
    add_block('simulink/Sources/Constant',[subsys '/Bout'],'Value',bo,'OutDataTypeStr','single','SampleTime','-1');

    add_block('simulink/User-Defined Functions/MATLAB Function',[subsys '/AttnFn']);
    ch = getChart(rt,[subsys '/AttnFn']);
    ch.Script = sprintf(attnFmt);

    add_line(subsys,'in/1',   'AttnFn/1','autorouting','on');
    add_line(subsys,'Wqkv/1', 'AttnFn/2','autorouting','on');
    add_line(subsys,'Bqkv/1', 'AttnFn/3','autorouting','on');
    add_line(subsys,'Wout/1', 'AttnFn/4','autorouting','on');
    add_line(subsys,'Bout/1', 'AttnFn/5','autorouting','on');
    add_line(subsys,'AttnFn/1','out/1',  'autorouting','on');
end

%% Save + update
fprintf('\nSaving model...\n');
save_system(v2Name);
try
    set_param(v2Name,'SimulationCommand','update');
    fprintf('Model update: OK\n');
catch e
    fprintf('Model update ERROR: %s\n', e.message);
end
save_system(v2Name);

%% Configure and attempt ERT code generation
fprintf('\nConfiguring ERT...\n');
set_param(v2Name,'SystemTargetFile','ert.tlc','TargetLang','C',...
    'GenerateReport','on','LaunchReport','off','GenCodeOnly','on');
set_param(getActiveConfigSet(v2Name),'ProdHWDeviceType','ARM Compatible->ARM Cortex-A');
save_system(v2Name);

fprintf('Generating C code...\n');
try
    slbuild(v2Name);
    codeDir = fullfile(projectDir,[v2Name '_ert_rtw']);
    if isfolder(codeDir)
        cf = dir(fullfile(codeDir,'*.c'));
        hf = dir(fullfile(codeDir,'*.h'));
        fprintf('\n=== CODE GENERATION SUCCESS ===\n');
        fprintf('  C files: %d,  H files: %d\n', numel(cf), numel(hf));
        for i=1:numel(cf)
            fprintf('  %-45s (%.1f KB)\n', cf(i).name, cf(i).bytes/1024);
        end
    end
catch e
    fprintf('\nCode gen FAILED: %s\n', e.message);
end

close_system(v2Name,1);
fprintf('\nbuild_simulink_v2 complete.\n');
end

%% -------------------------------------------------------------------------
function cleanSubs(subsys)
% Delete all signal lines then the DimFix constant block
lines = find_system(subsys,'FindAll','on','LookUnderMasks','on','type','line');
for k = 1:numel(lines)
    try delete_line(lines(k)); catch; end
end
try delete_block([subsys '/DimFix']); catch; end
end

function ch = getChart(rt, blockPath)
% Return the Stateflow EMChart for a MATLAB Function block
ch = rt.find('-isa','Stateflow.EMChart','Path', blockPath);
end
