function [output, numDimsOutput] = onnxWhere(condition_, X_, Y_, numDimsCondition_, numDimsX_, numDimsY_)
%#codegen

% Copyright 2024 The MathWorks, Inc.

condition          = model.coder.ops.extractIfDlarray(condition_);
X                  = model.coder.ops.extractIfDlarray(X_);
Y                  = model.coder.ops.extractIfDlarray(Y_);
numDimsCondition   = model.coder.ops.extractIfDlarray(numDimsCondition_);
numDimsX           = model.coder.ops.extractIfDlarray(numDimsX_);
numDimsY           = model.coder.ops.extractIfDlarray(numDimsY_);

Z = condition + X + Y; % broadcast
bigz = zeros(size(Z));      
bigCondition = condition + bigz;

bigX = X + bigz;
output = Y + bigz;
output(bigCondition==1) = bigX(bigCondition==1);
numDimsOutput = max([numDimsCondition, numDimsX, numDimsY]);
end
