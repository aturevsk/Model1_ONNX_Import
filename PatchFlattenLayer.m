classdef PatchFlattenLayer < nnet.layer.Layer & nnet.layer.Formattable
    % PatchFlattenLayer  Converts spatial Conv2D output to sequence format
    %   Reshapes [H, W, C, B] spatial (SSCB) data to [C, T, B] sequence
    %   (CTB) format where T = H*W. Used in Vision Transformers to convert
    %   patch embedding output to a token sequence.

    properties
        EmbedDim (1,1) double
    end

    methods
        function layer = PatchFlattenLayer(embedDim, name)
            arguments
                embedDim (1,1) double
                name     string = "patch_flatten"
            end
            layer.Name = name;
            layer.EmbedDim = embedDim;
            layer.Description = sprintf("Flatten patches to sequence (C=%d)", embedDim);
        end

        function Z = predict(~, X)
            % X: SSCB format [H, W, C, B]
            sz = size(X);
            batchSize = sz(4);
            X = stripdims(X);
            % Permute to [C, W, H, B] so reshape gives row-major (Python) ordering
            % where W varies fastest - matches PyTorch flatten(2) on NCHW
            X = permute(X, [3, 2, 1, 4]);
            Z = reshape(X, size(X,1), [], batchSize);
            Z = dlarray(Z, "CTB");
        end
    end
end
