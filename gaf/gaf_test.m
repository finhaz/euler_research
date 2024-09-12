clc
clear%% 生成数据
speed = [1 2 3 4 5 6 1 5 6 6 7 8]';
X = speed';
X = (X - min(X)) / (max(X) - min(X));
m = length(X);%% 数据处理
% 将数据归一化[1,-1]
X = ((X - max(X)) + (X - min(X)))/(max(X) - min(X));% 求极坐标
fai = acos(X);% 生成
GASF = X' * X - sqrt(1 - X.^2)' * sqrt(1 - X.^2);
GADF = sqrt(1-X.^2)' * X + X' * sqrt(1 - X.^2);%% 显示图（热力图）
% 
im_1 = figure(1);
imagesc(GASF)
title('GASF')
% saveas(im_1, 'GASF_2.bmp');
% 
im_2 = figure(2);
imagesc(GADF)
title('GADF');
% saveas(im_2, 'GADF_2.bmp');
%%
clc
clear%% 生成数据
speed = [1 2 3 4 5 6 1 5 6 6 7 8]';
%%
[GASF,GADF]=gasf_cal(speed);

im_1 = figure(1);
imagesc(GASF)
title('GASF')

im_2 = figure(2);
imagesc(GADF)
title('GADF');

%%
function [GASF,GADF]=gasf_cal(speed)
X = speed';
%X = (X - min(X)) / (max(X) - min(X));
%m = length(X);%% 数据处理
% 将数据归一化[1,-1]
X = ((X - max(X)) + (X - min(X)))/(max(X) + min(X));% 求极坐标
%fai = acos(X);% 生成
GASF = X' * X - sqrt(1 - X.^2)' * sqrt(1 - X.^2);
GADF = sqrt(1-X.^2)' * X + X' * sqrt(1 - X.^2);%% 显示图（热力图）
end