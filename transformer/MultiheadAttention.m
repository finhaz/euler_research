
classdef MultiheadAttention < matlab.mixin.Copyable
    properties
        numHeads
        headDim
        qLinear
        kLinear
        vLinear
        outLinear
    end
    
    methods
        function obj = MultiheadAttention(hiddenDim, numHeads)
            obj.numHeads = numHeads;
            obj.headDim = hiddenDim / numHeads;
            
            obj.qLinear = fullyConnectedLayer(hiddenDim);
            obj.kLinear = fullyConnectedLayer(hiddenDim);
            obj.vLinear = fullyConnectedLayer(hiddenDim);
            obj.outLinear = fullyConnectedLayer(hiddenDim);
        end
        
        function attended = forward(obj, query, key, value)
            batchSize = size(query, 1);
            
            q = obj.qLinear.forward(query);
            k = obj.kLinear.forward(key);
            v = obj.vLinear.forward(value);
            
            q = reshape(q, [batchSize, obj.numHeads, obj.headDim]);
            k = reshape(k, [batchSize, obj.numHeads, obj.headDim]);
            v = reshape(v, [batchSize, obj.numHeads, obj.headDim]);
            
            scores = (q * k') / sqrt(obj.headDim);
            attention = softmax(scores, 'dim', -1);
            
            attended = attention * v';
            attended = reshape(attended, [batchSize, obj.headDim * obj.numHeads]);
            attended = obj.outLinear.forward(attended);
        end
    end
end