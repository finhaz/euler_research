classdef FeedForward < matlab.mixin.Copyable
    properties
        linear1
        linear2
    end
    
    methods
        function obj = FeedForward(hiddenDim)
            obj.linear1 = fullyConnectedLayer(hiddenDim * 4);
            obj.linear2 = fullyConnectedLayer(hiddenDim);
        end
        
        function x = forward(obj, x)
            x = obj.linear1.forward(x);
            x = relu(x);
            x = obj.linear2.forward(x);
        end
    end
end