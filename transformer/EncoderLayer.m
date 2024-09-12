classdef EncoderLayer < matlab.mixin.Copyable
    properties
        multiheadAttention
        feedForward
    end
    
    methods
        function obj = EncoderLayer(hiddenDim, numHeads)
            obj.multiheadAttention = MultiheadAttention(hiddenDim, numHeads);
            obj.feedForward = FeedForward(hiddenDim);
        end
        
        function encoded = forward(obj, x)
            attended = obj.multiheadAttention.forward(x, x, x);
            encoded = obj.feedForward.forward(attended);
        end
    end
end