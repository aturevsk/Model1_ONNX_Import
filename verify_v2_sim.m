%% verify_v2_sim.m
% Runs vit_tiny_simulink_v2 with a test image (constant input),
% compares output with native dlnetwork predict.
% Results saved to verify_v2_results.mat

projectDir = '/Users/arkadiyturevskiy/Documents/Claude/PyTorch_Import_2/Model1';
cd(projectDir);
fprintf('=== Verification: vit_tiny_simulink_v2 vs native dlnetwork ===\n');

rng(42);
testImg = single(randn(224,224,3));

%% Reference: native dlnetwork
fprintf('Loading native network...\n');
load('vit_native_net.mat', 'nativeNet');
testDl = dlarray(reshape(testImg, [224,224,3,1]), 'SSCB');
nativeOut = predict(nativeNet, testDl);
refLogits = double(extractdata(nativeOut));
[~, refTop1] = max(refLogits(:));
fprintf('Reference top-1 class: %d  (logit=%.4f)\n', refTop1, refLogits(refTop1));

%% Load quantNet for native layer masks
load('vit_quantized_net.mat', 'quantNet');

%% Open v2 model, replace Inport with Constant
if bdIsLoaded('vit_tiny_simulink_v2'), close_system('vit_tiny_simulink_v2', 0); end
load_system('vit_tiny_simulink_v2');
set_param('vit_tiny_simulink_v2', 'LoadExternalInput', 'off');

mdlWs = get_param('vit_tiny_simulink_v2', 'ModelWorkspace');
mdlWs.assignin('testInput', testImg);

% Delete top-level lines and inport, add Constant
topLines = find_system('vit_tiny_simulink_v2', 'FindAll','on', ...
    'SearchDepth',1,'type','line');
for k = 1:numel(topLines)
    try delete_line(topLines(k)); catch; end
end
try delete_block('vit_tiny_simulink_v2/input'); catch; end

add_block('simulink/Sources/Constant','vit_tiny_simulink_v2/TestConst',...
    'Value','testInput','OutDataTypeStr','single','SampleTime','-1');
add_line('vit_tiny_simulink_v2','TestConst/1','vit_tiny_simulink_1/1','autorouting','on');

fprintf('Injected test image as Constant. Running simulation...\n');
tic;
set_param('vit_tiny_simulink_v2','StopTime','0');
simOut = sim('vit_tiny_simulink_v2');
elapsed = toc;
fprintf('Simulation done in %.1f s\n', elapsed);

% Extract output
simVars = simOut.who;
fprintf('Simulation output variables: ');
disp(simVars);

% Try to get the output signal
simLogits = [];
try
    yout = simOut.yout;
    if ~isempty(yout)
        simLogits = double(squeeze(yout{1}.Values.Data));
    end
catch
end
if isempty(simLogits)
    try
        simLogits = double(squeeze(simOut.get('output')));
    catch
    end
end

close_system('vit_tiny_simulink_v2', 0);

%% Compare
if ~isempty(simLogits)
    [~, simTop1] = max(simLogits(:));
    maxDiff = max(abs(refLogits(:) - simLogits(:)));
    fprintf('\n=== RESULTS ===\n');
    fprintf('Reference top-1: %d,  Simulink top-1: %d\n', refTop1, simTop1);
    fprintf('Max logit diff:  %.6f\n', maxDiff);
    fprintf('Top-1 match:     %s\n', mat2str(refTop1==simTop1));
    match = (refTop1 == simTop1);
    save('verify_v2_results.mat', 'refLogits', 'simLogits', 'maxDiff', 'match', 'elapsed');
    fprintf('Results saved to verify_v2_results.mat\n');
else
    fprintf('Could not extract output from simulation.\n');
    save('verify_v2_results.mat', 'refLogits', 'simOut');
end
fprintf('=== verify_v2_sim complete ===\n');
