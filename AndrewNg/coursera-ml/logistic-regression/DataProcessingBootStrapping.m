% ========================= Data Processing ========================
% 
% 原始数据处理 
% 算法：自助法
% 原理：使用自助采样的方法,给定一个数据集,其中包含m个样本.对数据集
%       随机抽取m次,总有一部分样本不被抽到,其概率可以通过计算获得.
%       抽取到的作为训练集,未抽取到的作为测试集.
%
% =========================       Code      ========================
function [X, Y, X_test, Y_test] = DataProcessingBootStrapping(rdata)

% 特征添加前矩阵参数
rm = size(rdata, 1);

% 特征添加
data = [ones(rm,1) rdata];

% 特征添加后矩阵参数
m = size(data, 1);
n = size(data, 2);

% 定义训练集和测试集
tesdata = data;
tradata = data;

% 自助法抽取数据,这里把抽到的数据分成两个部分处理,一个是训练数据,不更改为0,
% 另一个是测试数据,更改为0,也即没有更改的即为数据测试集
% 这里为什么还要多此一举求tradata, 可以直接用data-tesdata同样可以得到
% 因用data-tesdata得到的数据中含有同一行所有数据都为0,这在训练的时候画图时
% 会造成偏差,导致图像不正确.就算测试集同一行所有列数据同时为0,也仅仅是一个点,
% 并不影响整个测试集结果
for i = 1:m
    rownum = round(m*abs(rand(1)));
    tesdata(rownum,(1:n)) = zeros(1,n);
    tradata(i,(1:n)) = data(rownum,(1:n));
end

% 训练集数据处理
% 构造训练样本特征值数据X,标注值Y,取训练样本的前十四列作为特征值X
% 取训练样本的最后一列作为标注值Y
X = tradata(:, [1:n-1]);
Y = tradata(:, n);

% 测试集数据处理
% 构造测试样本特征值数据X_test,测试标注Y_test,取测试样本的前十四列作为
% 特征值X_test,取测试赝本的最后一列作为测试标注Y_test
X_test = tesdata(:, [1:n-1]);
Y_test = tesdata(:, n);

end
