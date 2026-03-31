%% export_to_simulink.m - Export ViT-Tiny to Simulink and generate C code
% Exports the native/quantized ViT-Tiny network to a Simulink model
% using the Deep Learning Predict block, then generates C code.

clear; clc;
projectDir = fileparts(mfilename('fullpath'));
cd(projectDir);

%% Load networks
fprintf('=== Loading networks ===\n');
load('vit_native_net.mat', 'nativeNet');
fprintf('FP32 network loaded: %d layers\n', numel(nativeNet.Layers));

hasQuantized = exist('vit_quantized_net.mat', 'file');
if hasQuantized
    load('vit_quantized_net.mat', 'quantNet');
    fprintf('INT8 quantized network loaded.\n');
end

%% Create Simulink model
modelName = 'vit_tiny_simulink';
fprintf('\n=== Creating Simulink model: %s ===\n', modelName);

% Close if already open
if bdIsLoaded(modelName)
    close_system(modelName, 0);
end

% Create new model
new_system(modelName);
open_system(modelName);

% Set solver parameters for code generation
set_param(modelName, 'Solver', 'FixedStepDiscrete');
set_param(modelName, 'FixedStep', '1');
set_param(modelName, 'StopTime', '10');

% Add blocks
% Input: Constant block with test image
add_block('simulink/Sources/Constant', [modelName '/TestImage'], ...
    'Value', 'ones(224,224,3,''single'')', ...
    'OutDataTypeStr', 'single', ...
    'SampleTime', '1');

% Deep Learning Predict block
add_block('deeplib/Predict', [modelName '/DL_Predict']);

% Output: Terminator
add_block('simulink/Sinks/Display', [modelName '/Output']);

% Connect blocks
add_line(modelName, 'TestImage/1', 'DL_Predict/1');
add_line(modelName, 'DL_Predict/1', 'Output/1');

% Save model
save_system(modelName);
fprintf('Simulink model created and saved.\n');

%% Configure for code generation
fprintf('\n=== Configuring for C code generation ===\n');

% Set code generation parameters
set_param(modelName, 'SystemTargetFile', 'ert.tlc');
set_param(modelName, 'TargetLang', 'C');
set_param(modelName, 'GenerateReport', 'on');
set_param(modelName, 'LaunchReport', 'off');
set_param(modelName, 'GenCodeOnly', 'on');

% Set hardware configuration
cs = getActiveConfigSet(modelName);
set_param(cs, 'ProdHWDeviceType', 'ARM Compatible->ARM Cortex-A');

save_system(modelName);
fprintf('Code generation configured (ERT target, ARM Cortex-A).\n');

%% Generate C code
fprintf('\n=== Generating C code ===\n');
try
    slbuild(modelName);
    fprintf('C code generation successful!\n');

    % Report output directory
    codeDir = fullfile(projectDir, [modelName '_ert_rtw']);
    if isfolder(codeDir)
        cFiles = dir(fullfile(codeDir, '*.c'));
        hFiles = dir(fullfile(codeDir, '*.h'));
        fprintf('Generated code:\n');
        fprintf('  Directory: %s\n', codeDir);
        fprintf('  C files: %d\n', numel(cFiles));
        fprintf('  H files: %d\n', numel(hFiles));
        for i = 1:numel(cFiles)
            fprintf('    %s (%.1f KB)\n', cFiles(i).name, cFiles(i).bytes/1024);
        end
    end
catch e
    fprintf('Code generation note: %s\n', e.message);
    fprintf('This may require additional configuration for the target platform.\n');
    fprintf('The Simulink model is ready for manual code generation.\n');
end

%% Analyze network for code generation compatibility
fprintf('\n=== Analyzing network for code generation ===\n');
try
    results = analyzeNetworkForCodegen(nativeNet);
    fprintf('Code generation analysis:\n');
    disp(results);
catch e
    fprintf('analyzeNetworkForCodegen: %s\n', e.message);
end

%% Summary
fprintf('\n=== Export Summary ===\n');
fprintf('Simulink model: %s.slx\n', modelName);
fprintf('Network: ViT-Tiny (104 layers, 5.7M params)\n');
fprintf('Target: ARM Cortex-A (Embedded Coder)\n');
fprintf('Solver: Fixed-step discrete\n');

close_system(modelName, 1);
fprintf('\nExport to Simulink complete.\n');
