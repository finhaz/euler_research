%% 创建深度学习网络架构
% 该脚本可创建具有以下属性的深度学习网络:
%%
% 
%  层数: 6
%  连接数: 5
%
%% 
% 运行脚本以在工作区变量 |layers| 中创建层。
% 
% 要了解详细信息，请参阅 <matlab:helpview('deeplearning','generate_matlab_code') 从深度网络设计器生成 
% MATLAB 代码>。
% 
% 由 MATLAB 于 2024-05-18 12:17:11 自动生成
%% 创建层组

layers = [
    sequenceInputLayer(12,"Name","input")
    lstmLayer(128,"Name","lstm","OutputMode","last")
    dropoutLayer(0.5,"Name","drop")
    fullyConnectedLayer(9,"Name","fc")
    softmaxLayer("Name","softmax")
    classificationLayer("Name","classification")];
%% 绘制层

plot(layerGraph(layers));

%%
[XTrain,YTrain] = japaneseVowelsTrainData;
[XValidation,YValidation] = japaneseVowelsTestData;
%%

miniBatchSize = 27;
options = trainingOptions('adam', ...
    'ExecutionEnvironment','cpu', ...
    'MaxEpochs',100, ...
    'MiniBatchSize',miniBatchSize, ...
    'ValidationData',{XValidation,YValidation}, ...
    'GradientThreshold',2, ...
    'Shuffle','every-epoch', ...
    'Verbose',false, ...
    'Plots','training-progress');
%%
net = trainNetwork(XTrain,YTrain,layers,options);