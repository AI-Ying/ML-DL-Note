% 初始化数据
printf("初始化环境...\n")
clear 

% 加载原始数据
printf("加载数据...\n")
rdata = load('ex1data1.txt');
% rdata = load('housing.data');

% 数据归一化分析
printf("数据归一化分析....\n")
FeatureScaling(rdata);

% 数据模型处理
printf("数据模型分析处理...\n")
mdata = ModelAnalizing(rdata );

% 数据处理
printf("数据处理...\n")
% 留出法
% [X, Y, X_test, Y_test] = DataProcessingHoldOut(mdata);
% 自助法
[X, Y, X_test, Y_test] = DataProcessingBootStrapping(mdata);

% 正常法求最优theta, 使用正常法,可以不需要对数据进行归一化
theta = NormalEquation(X, Y);
% 梯度下降处理求解最优theta
% 梯度下降需要的参数,学习率,下降迭代次数
% theta = ones(size(X, 2), 1);
% alpha = 0.01;
% iterations = 5000;
% printf("正在训练....\n")
% [theta, J_his]= GradientDescent(X, Y, theta, alpha, iterations);

% 数据测试处理
printf("开始测试训练的模型...\n")
ModelTesting(X, Y, X_test, Y_test, theta);


