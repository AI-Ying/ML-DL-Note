% 初始化数据
printf("初始化环境...\n")
clear 

% 加载原始数据
printf("加载数据...\n")
rdata = load('ex2data1.txt');

% 数据归一化分析

% 数据模型处理
printf("数据模型分析处理...\n")
PlotData(rdata );
hold off;

% 数据处理
printf("数据处理...\n")
% 自助法
[X, Y, X_test, Y_test] = DataProcessingBootStrapping(rdata);

% 使用系统自带的优化函数
options = optimset('Gradobj', 'on', 'MaxIter', 2000);
theta = ones(size(X, 2), 1);
[theta, cost, exitFlag] = fminunc(@(t)(CostFunction(X,Y,t)), theta, options);


% 数据测试处理
printf("开始测试训练的模型...\n")
ModelTesting(X, Y, X_test, Y_test, theta);


