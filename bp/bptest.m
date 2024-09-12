%以下是一个简单的matlab代码示例，用于实现bp神经网络：
%这段代码实现了一个具有一个隐藏层的bp神经网络，可以用于二进制异或问题的分类。
%其中，logsig和purelin是matlab中的激活函数，分别表示sigmoid函数和线性函数。

%```matlab
% bp神经网络
% 输入数据
x = [0 0 1 1;0 1 0 1];
% 期望输出数据
t = [0 1 1 0];
% 隐藏层神经元个数
hidden_num = 4;
% 学习率
eta = 0.5;
% 初始化权重和阈值
w1 = rand(hidden_num,2);
b1 = rand(hidden_num,1);
w2 = rand(1,hidden_num);
b2 = rand(1,1);
% 训练次数
epoch = 10000;
% 训练
for i = 1:epoch
    % 前向传播
    a1 = logsig(w1*x+b1);
    a2 = purelin(w2*a1+b2);
    % 计算误差
    e = t-a2;
    % 反向传播
    delta2 = e;
    delta1 = diag(a1.*(1-a1)).*(w2'*delta2);
    % 更新权重和阈值
    w2 = w2 + eta*delta2*a1';
    b2 = b2 + eta*delta2;
    w1 = w1 + eta*delta1*x';
    b1 = b1 + eta*delta1;
end
% 测试
y = purelin(w2*logsig(w1*x+b1)+b2);
%```
%代码中的 `y` 表示神经网络的输出结果%
% 它是一个向量，包含了神经网络对输入数据进行分类后的结果。
%在这个例子中，输入数据是一个 2x4 的矩阵，每一列代表一个样本，每一行代表一个特征。
%输出结果 `y` 是一个 1x4 的矩阵，每一列代表一个样本的分类结果，其中的值为 0 或 1。
%这个例子是用 bp 神经网络实现了二进制异或问题的分类，即给定两个二进制数，输出它们异或的结果。
