% ========================= Data Processing ========================
% 
% 原始数据处理 
% 算法：留出法
% 原理：直接将数据集划分为两个互斥的集合,其中一个作为训练集,另一个
%       作为测试集
%
% =========================       Code      ========================
function [X, Y, X_test, Y_test] = DataProcessingHoldOut(rdata)

% 原始数据矩阵参数
rm = size(rdata,1);

% 数据归一化处理
fsdata = (rdata - mean(rdata)) ./ std(rdata);
% 特征添加
data = [ones(rm,1) fsdata];

% 特征添加后的矩阵参数
m = size(data, 1);
n = size(data, 2);

% 从数据中使用留出法抽取80%的数据作为训练样本
tranum = round(m*0.8);
tradata = data([1:tranum], [1:n]);

% 剩下的数据作为测试模型的测试样本
tesnum = round(m*0.2);
tesdata = data([(tranum+1):m], [1:n]);

% 构造训练样本特征值数据X,标注值Y, 取训练样本的前n-1列作为训练数据X
% 取训练样本的最后一列作为标注值Y
X = tradata(:, [1:n-1]);
Y = tradata(:, n);

% 构造测试样本特征值数据X_test,测试标注值Y_test, 取测试样本的前n-1列作为
% 测试数据X_test, 取测试样本的最后一列作为测试标注值Y_test.
X_test = tesdata(:,[1:n-1]);
Y_test = tesdata(:,n);

end
