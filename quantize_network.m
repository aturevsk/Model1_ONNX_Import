%% quantize_network.m - Quantize the native ViT-Tiny network (INT8)
% Calibrates and quantizes the native dlnetwork using the Deep Learning
% Toolbox quantization workflow.

clear; clc;
projectDir = fileparts(mfilename('fullpath'));
cd(projectDir);

%% Load native network
fprintf('=== Loading native ViT-Tiny network ===\n');
load('vit_native_net.mat', 'nativeNet');
fprintf('Network loaded: %d layers, 5.7M parameters\n', numel(nativeNet.Layers));

%% Generate calibration data
fprintf('\n=== Generating calibration data ===\n');
rng(42);
numCalibrationImages = 100;
calibrationData = randn(224, 224, 3, numCalibrationImages, 'single');

% Create an imageDatastore-like calibration function
% For quantization, we need a calibration data source
calibDS = arrayDatastore(calibrationData, IterationDimension=4);

fprintf('Generated %d calibration images (224x224x3)\n', numCalibrationImages);

%% Quantize the network
fprintf('\n=== Quantizing network (INT8) ===\n');

% Use dlquantizer with MATLAB execution environment (macOS)
quantObj = dlquantizer(nativeNet, ExecutionEnvironment="MATLAB");
fprintf('Quantizer created (ExecutionEnvironment=MATLAB).\n');

% Calibrate
fprintf('Calibrating with %d images...\n', numCalibrationImages);
calResults = calibrate(quantObj, calibDS);
fprintf('Calibration complete. Ranges collected for %d parameters.\n', height(calResults));
disp(calResults(1:min(10, height(calResults)), :));

% Save quantization object
save('vit_quantized_obj.mat', 'quantObj', '-v7.3');
fprintf('Quantization object saved to vit_quantized_obj.mat\n');

% Validate quantized network
fprintf('\n=== Validating quantized network ===\n');
valDS = arrayDatastore(calibrationData(:,:,:,1:20), IterationDimension=4);
try
    valResults = validate(quantObj, valDS);
    fprintf('Validation results:\n');
    disp(valResults);
catch e
    fprintf('Validation note: %s\n', e.message);
end

% Quantize the network to get a quantized dlnetwork
fprintf('\n=== Producing quantized dlnetwork ===\n');
try
    quantNet = quantize(quantObj);
    fprintf('Quantized dlnetwork created.\n');
    save('vit_quantized_net.mat', 'quantNet', '-v7.3');
    fprintf('Saved to vit_quantized_net.mat\n');

    % Compare FP32 vs quantized outputs
    fprintf('\n=== Comparing FP32 vs INT8 ===\n');
    numTests = 10;
    rng(99);
    maxDiffs = zeros(numTests, 1);
    topMatchCount = 0;

    for t = 1:numTests
        testImg = dlarray(single(randn(224, 224, 3, 1)), "SSCB");
        fp32Out = predict(nativeNet, testImg);
        fp32Vals = double(extractdata(fp32Out(:)));
        [~, fp32Top1] = max(fp32Vals);

        int8Out = predict(quantNet, testImg);
        int8Vals = double(extractdata(int8Out(:)));
        [~, int8Top1] = max(int8Vals);

        maxDiffs(t) = max(abs(fp32Vals - int8Vals));
        if fp32Top1 == int8Top1
            topMatchCount = topMatchCount + 1;
        end
    end

    fprintf('FP32 vs INT8 comparison (%d tests):\n', numTests);
    fprintf('  Max logit diff:  %.4f\n', max(maxDiffs));
    fprintf('  Mean logit diff: %.4f\n', mean(maxDiffs));
    fprintf('  Top-1 agreement: %d/%d (%.1f%%)\n', topMatchCount, numTests, ...
        100*topMatchCount/numTests);

    % Quantization details
    qd = quantizationDetails(quantNet);
    fprintf('\nQuantized layers:\n');
    disp(qd(1:min(15, height(qd)), :));
catch e
    fprintf('Quantize method: %s\n', e.message);
    fprintf('Calibration data available for Simulink/codegen export.\n');
end

fprintf('\n=== Quantization complete ===\n');
