oldpath = path;
newpath=string(matlabdrive)+"\tools";
path(oldpath,newpath);


%从开源数据中提取数据

res = getenv("OneBatk");
strf=string(res)+"\Oxford_Degradation\"
load(strf+"Oxford_Battery_Degradation_Dataset_1.mat");


%cell1
layer(:,1)=Cell1.cyc0000.C1dc.v(1:2200);
layer(:,2)=Cell1.cyc0500.C1dc.v(1:2200);
layer(:,3)=Cell1.cyc1000.C1dc.v(1:2200);
layer(:,4)=Cell1.cyc1600.C1dc.v(1:2200);
layer(:,5)=Cell1.cyc2200.C1dc.v(1:2200);
layer(:,6)=Cell1.cyc2700.C1dc.v(1:2200);
layer(:,7)=Cell1.cyc3200.C1dc.v(1:2200);
layer(:,8)=Cell1.cyc3800.C1dc.v(1:2200);
layer(:,9)=Cell1.cyc4300.C1dc.v(1:2200);
layer(:,10)=Cell1.cyc5000.C1dc.v(1:2200);
%cell2
layer(:,11)=Cell2.cyc0000.C1dc.v(1:2200);
layer(:,12)=Cell2.cyc0500.C1dc.v(1:2200);
layer(:,13)=Cell2.cyc1000.C1dc.v(1:2200);
layer(:,14)=Cell2.cyc1600.C1dc.v(1:2200);
layer(:,15)=Cell2.cyc2200.C1dc.v(1:2200);
layer(:,16)=Cell2.cyc2700.C1dc.v(1:2200);
layer(:,17)=Cell2.cyc3200.C1dc.v(1:2200);
layer(:,18)=Cell2.cyc3800.C1dc.v(1:2200);
layer(:,19)=Cell2.cyc4300.C1dc.v(1:2200);
layer(:,20)=Cell2.cyc5000.C1dc.v(1:2200);
%cell3
layer(:,21)=Cell3.cyc0000.C1dc.v(1:2200);
layer(:,22)=Cell3.cyc0500.C1dc.v(1:2200);
layer(:,23)=Cell3.cyc1000.C1dc.v(1:2200);
layer(:,24)=Cell3.cyc1600.C1dc.v(1:2200);
layer(:,25)=Cell3.cyc2200.C1dc.v(1:2200);
layer(:,26)=Cell3.cyc2700.C1dc.v(1:2200);
layer(:,27)=Cell3.cyc3200.C1dc.v(1:2200);
layer(:,28)=Cell3.cyc3800.C1dc.v(1:2200);
layer(:,29)=Cell3.cyc4300.C1dc.v(1:2200);
layer(:,30)=Cell3.cyc5000.C1dc.v(1:2200);
%cell4
layer(:,31)=Cell4.cyc0000.C1dc.v(1:2200);
layer(:,32)=Cell4.cyc0500.C1dc.v(1:2200);
layer(:,33)=Cell4.cyc1000.C1dc.v(1:2200);
layer(:,34)=Cell4.cyc1600.C1dc.v(1:2200);
layer(:,35)=Cell4.cyc2200.C1dc.v(1:2200);
layer(:,36)=Cell4.cyc2700.C1dc.v(1:2200);
layer(:,37)=Cell4.cyc3200.C1dc.v(1:2200);
layer(:,38)=Cell4.cyc3800.C1dc.v(1:2200);
layer(:,39)=Cell4.cyc4300.C1dc.v(1:2200);
layer(:,40)=Cell4.cyc5000.C1dc.v(1:2200);
%cell5
layer(:,41)=Cell5.cyc0000.C1dc.v(1:2200);
layer(:,42)=Cell5.cyc0500.C1dc.v(1:2200);
layer(:,43)=Cell5.cyc1000.C1dc.v(1:2200);
layer(:,44)=Cell5.cyc1600.C1dc.v(1:2200);
layer(:,45)=Cell5.cyc2200.C1dc.v(1:2200);
layer(:,46)=Cell5.cyc2700.C1dc.v(1:2200);
layer(:,47)=Cell5.cyc3200.C1dc.v(1:2200);
layer(:,48)=Cell5.cyc3800.C1dc.v(1:2200);
layer(:,49)=Cell5.cyc4300.C1dc.v(1:2200);
layer(:,50)=Cell5.cyc5000.C1dc.v(1:2200);
%cell6
layer(:,51)=Cell6.cyc0000.C1dc.v(1:2200);
layer(:,52)=Cell6.cyc0500.C1dc.v(1:2200);
layer(:,53)=Cell6.cyc1000.C1dc.v(1:2200);
layer(:,54)=Cell6.cyc1600.C1dc.v(1:2200);
layer(:,55)=Cell6.cyc2200.C1dc.v(1:2200);
layer(:,56)=Cell6.cyc2700.C1dc.v(1:2200);
layer(:,57)=Cell6.cyc3200.C1dc.v(1:2200);
layer(:,58)=Cell6.cyc3800.C1dc.v(1:2200);
layer(:,59)=Cell6.cyc4300.C1dc.v(1:2200);
layer(:,60)=Cell6.cyc5000.C1dc.v(1:2200);
%cell7
layer(:,61)=Cell7.cyc0000.C1dc.v(1:2200);
layer(:,62)=Cell7.cyc0500.C1dc.v(1:2200);
layer(:,63)=Cell7.cyc1000.C1dc.v(1:2200);
layer(:,64)=Cell7.cyc1600.C1dc.v(1:2200);
layer(:,65)=Cell7.cyc2200.C1dc.v(1:2200);
layer(:,66)=Cell7.cyc2700.C1dc.v(1:2200);
layer(:,67)=Cell7.cyc3200.C1dc.v(1:2200);
layer(:,68)=Cell7.cyc3800.C1dc.v(1:2200);
layer(:,69)=Cell7.cyc4300.C1dc.v(1:2200);
layer(:,70)=Cell7.cyc5000.C1dc.v(1:2200);
%cell8
layer(:,71)=Cell8.cyc0000.C1dc.v(1:2200);
layer(:,72)=Cell8.cyc0500.C1dc.v(1:2200);
layer(:,73)=Cell8.cyc1000.C1dc.v(1:2200);
layer(:,74)=Cell8.cyc1600.C1dc.v(1:2200);
layer(:,75)=Cell8.cyc2200.C1dc.v(1:2200);
layer(:,76)=Cell8.cyc2700.C1dc.v(1:2200);
layer(:,77)=Cell8.cyc3200.C1dc.v(1:2200);
layer(:,78)=Cell8.cyc3800.C1dc.v(1:2200);
layer(:,79)=Cell8.cyc4300.C1dc.v(1:2200);
layer(:,80)=Cell8.cyc5000.C1dc.v(1:2200);

%在PCA输入分析前进行预处理
layerg=layer';

%PCA提取
[data_PCA, COEFF, sum_explained]=pca_demo_1(layerg,3);

%描画散点图
A=zscore(data_PCA);

figure;
scatter3(A(:,1),A(:,2),A(:,3));

%A存为mat文件，以便调用工具箱
save('A','A');


findcluster('A.mat');
TX=clusterdata(A,4);

%clusterdata直接聚类
figure;
scatter3(A(:,1),A(:,2),A(:,3),100,TX,'filled')
title('Result of Clusterdata');

%kmeans
TX2=kmeans(A,4);
figure;
scatter3(A(:,1),A(:,2),A(:,3),100,TX2,'filled')
title('Result of ClusterKmean');