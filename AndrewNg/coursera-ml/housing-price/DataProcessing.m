% ========================= Data Processing ========================
% 
% 原始数据处理 
% 算法：保留法
% 原理：从原生数据抽取2%作为预测样本,剩余的80%作为训练样本,最后剩余作为
% 测试样本
%
% =========================       Code      ========================
function [X, Y, X_test, X_predict] = DataProcessing(data)

% 数据X矩阵参数
m = size(data,1);
n = size(data,2);

% 从数据X中抽取2%(前13列后497-506行数据)的数据用来作为预测样本
prenum = round(m*0.02);
predata = data([(m-prenum+1):m],[1:n]);

% 从剩余的的数据中使用保留法抽取80%(前13列1-397行)的数据作为训练样本
tranum = round((m-prenum)*0.8);
tradata = data([1:tranum], [1:n]);

% 剩下的数据(前13列398-496行)作为测试模型的测试样本
tesnum = round((m-prenum)*0.2);
tesdata = data([(tranum+1):(m-prenum)], [1:n]);

% 构造训练样本特征值数据X,标注值Y.
% 取训练样本的前十三列作为特征值X_tradata,然后再其前添加一列,构成特征值X
% 取训练样本的最后一列作为标注值Y
X_tradata = tradata(:, [1:n-1]);
X = [ones(tranum,1) X_tradata];
Y = tradata(:, n);

% 构造测试样本特征值数据X_test.
% 取测试样本的前十三列作为特征值X_tesdata,然后再其前添加一列,构成特征值
% X_test 
X_tesdata = tesdata(:,[1:n-1]);
X_test = [ones(tesnum, 1) X_tesdata];

% 构造预测样本特征值数据X_test.
% 取预测样本的前十三列作为特征值X_predata,然后再其前添加一列,构成特征值
% X_predict
X_predata = predata(:, [1:n-1]);
X_predict = [ones(prenum, 1) X_predata];

end
