
% Usage example
inputDim = 1000;
hiddenDim = 256;
numLayers = 6;
numHeads = 8;

model = Transformer(inputDim, hiddenDim, numLayers, numHeads);
inputData = [1, 2, 3, 4, 5; 6, 7, 8, 9, 10];  % Example input data
output = model.forward(inputData);
disp(size(output));