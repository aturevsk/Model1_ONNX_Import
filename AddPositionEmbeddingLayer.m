classdef AddPositionEmbeddingLayer < nnet.layer.Layer & nnet.layer.Formattable
    % AddPositionEmbeddingLayer  Adds a learnable positional embedding to input
    %   Adds a learned [embedDim x seqLen] embedding to each token in the
    %   input sequence. Used in Vision Transformer (ViT) architectures.

    properties (Learnable)
        Weights  % [embedDim x seqLen] positional embedding
    end

    methods
        function layer = AddPositionEmbeddingLayer(embedDim, seqLen, name)
            arguments
                embedDim (1,1) double
                seqLen   (1,1) double
                name     string = "add_pos_embed"
            end
            layer.Name = name;
            layer.Description = sprintf("Add position embedding (%d x %d)", embedDim, seqLen);
            layer.Weights = randn(embedDim, seqLen, 'single') * 0.02;
        end

        function Z = predict(layer, X)
            % X: [C, B, T] in CBT format (MATLAB canonical)
            % Reshape weights [C, seqLen] -> [C, 1, seqLen] for proper broadcast
            posEmb = reshape(layer.Weights, size(layer.Weights, 1), 1, []);
            Z = X + posEmb;
        end
    end
end
