
% 初始化数据

clear 


% 加载原始数据
rdata = load('housing.data');
fsdata = FeatureScaling(rdata);
[X, Y, X_test, X_predict] = DataProcessing(fsdata);

theta = ones(size(X, 2), 1);
J = CostFunction(X, Y, theta);
