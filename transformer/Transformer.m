classdef Transformer < matlab.mixin.Copyable
    properties
        embedding
        encoderLayers
    end
    methods
        function obj = Transformer(inputDim, hiddenDim, numLayers, numHeads)
            obj.embedding = embeddingLayer(hiddenDim, inputDim);
            obj.encoderLayers = repmat(EncoderLayer(hiddenDim, numHeads), 1, numLayers);
        end
        
        function encoded = forward(obj, x)
            embedded = obj.embedding(x);
            encoded = embedded;
            
            for i = 1:numel(obj.encoderLayers)
                encoded = obj.encoderLayers(i).forward(encoded);
            end
        end
    end
end

