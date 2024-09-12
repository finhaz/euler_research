% 以下是一个简单的 MATLAB 神经网络示例：

%这个示例创建了一个包含 2 个输入、3 个隐藏层神经元和 1 个输出的前馈神经网络
% 并使用 Iris 数据集进行训练。
% 然后，它设置了训练参数并使用 `train` 函数对神经网络进行训练。
% 最后，它使用训练好的神经网络对输入数据进行预测，并通过 `plotperform` 函数绘制误差曲线图。

%```matlab
% 创建一个包含 2 个输入、3 个隐藏层神经元和 1 个输出的前馈神经网络
net = feedforwardnet([3]);

% 加载训练数据
load iris_dataset;
inputs = irisInputs;
targets = irisTargets;

% 设置训练参数
net.trainParam.epochs = 100;
net.trainParam.goal = 0.01;

% 训练神经网络
[net, tr] = train(net, inputs, targets);

% 使用训练好的神经网络进行预测
outputs = net(inputs);

% 绘制误差曲线图
plotperform(tr);
%```
