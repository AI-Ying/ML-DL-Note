% ======================== Cost Function ===========================
%
% 损失函数计算
%
% ========================      Code     ===========================
function [J, grad] = CostFunction(X, Y, theta)

% 矩阵的行数,列数
[column, row] = size(X);

% 规定损失函数的返回值是一个变量而不是一个矩阵
J = 0;

% 假设函数(Hypothesis Function) H(X),这里使用了对多个特征求和来计算
% sum(A, 1) = sum(A) 表示按列求和, sum(A,2)表示按行求和
H = Sigmod(sum(theta' .* X, 2));

% 损失函数(Cost Function) J(theta)
J = sum( (-Y .* log(H)) .- ((1 .- Y) .* log(1 .- H)) ) / column;

% 损失函数J(theta)对theta的偏导
for i = 1:row
    temp(i, 1) = sum( (H .- Y) .* X(:, i) ) / column;
end
grad = temp;

end
