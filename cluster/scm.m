data_n=30;

k=3; %initialization the number of data and the clusters of data

C=rand(k,2);% rand initialization the centers of clusters

data1=10.*repmat(C(1,:),data_n,1)+randn(data_n,2)./10;

data2=10.*repmat(C(2,:),data_n+10,1)+randn(data_n+10,2)./10;

data3=10.*repmat(C(3,:),data_n+20,1)+randn(data_n+20,2)./10;

data=[data1;data2;data3]; %数据生成

plot(data(:,1),data(:,2),'*'); %绘制生成的数据

hold on

[C,S]=subclust(data,[0.25,0.2]); %减法聚类

plot(C(:,1),C(:,2),'ro') %绘制聚类中心

%给聚类中心绘制椭圆

for l=1:k
    hold on;
    %plotEllipse(C(l,1),C(l,2),0.25,0.2,0) %椭圆绘制函数
    %ellipsoid(0,0,0,10,5,5,50)
end