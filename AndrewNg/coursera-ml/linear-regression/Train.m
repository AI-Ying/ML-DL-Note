
% 初始化数据
printf("初始化环境...\n")
clear 

% 加载原始数据
printf("加载数据...\n")
rdata = load('ex1data1.txt');

% 数据归一化分析
printf("数据归一化分析....\n")
FeatureScaling(rdata);

% 数据模型处理
printf("数据模型分析处理...\n")
mdata = ModelAnalizing(rdata );

% 数据处理
printf("数据处理...")
% 留出法
[X, Y, X_test, Y_test] = DataProcessingHoldOut(mdata);
% 自助法
% [X, Y, X_test, Y_test] = DataProcessingBootStrapping(mdata);

% 梯度下降需要的参数,学习率,下降迭代次数
theta = ones(size(X, 2), 1);
alpha = 0.01;
iterations = 5000;

% 梯度下降处理
printf("正在训练....\n")
[theta, J_his]= GradientDescent(X, Y, theta, alpha, iterations);

% 最后一次损失函数值


% 数据测试处理
printf("开始测试训练的模型...\n")
ModelTesting(X, Y, X_test, Y_test, theta);


