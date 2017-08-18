% ======================== Cost Function ===========================
%
% 损失函数计算
%
% ========================      Code     ===========================
function J = CostFunction(X, Y, theta)

% 矩阵的行数
m = size(X, 1);

% 规定损失函数的返回值是一个变量而不是一个矩阵
J = 0;

% 假设函数(Hypothesis Function)
H = X * theta;

% 损失函数(Cost Function)
J = sum((H - Y) .^2) / (2 * m);

end
