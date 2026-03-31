function [A, B, C, alpha, beta, numDimsY] = prepareGemmArgs(A_, B_, C_, alpha_, beta_, transA_, transB_, numDimsC_)
%#codegen

% Prepares arguments for implementing the ONNX Gemm operator

% Copyright 2024 The MathWorks, Inc. 

    A__        = model.coder.ops.extractIfDlarray(A_);
    B__        = model.coder.ops.extractIfDlarray(B_);
    C__        = model.coder.ops.extractIfDlarray(C_);
    alpha      = model.coder.ops.extractIfDlarray(alpha_);
    beta       = model.coder.ops.extractIfDlarray(beta_);
    transA     = model.coder.ops.extractIfDlarray(transA_);
    transB     = model.coder.ops.extractIfDlarray(transB_);
    numDimsC   = model.coder.ops.extractIfDlarray(numDimsC_);
   

    if transA
        A = A__';
    else
        A = A__;
    end
    if transB
        B = B__';
    else
        B = B__;
    end

    if numDimsC < 2
        C = C__(:);   % C can be broadcast to [N M]. Make C a col vector ([N 1])
    else
        C = C__;
    end
    
    numDimsY = 2;
    % Y=B*A because we want (AB)'=B'A', and B and A are already transposed.
end
