% ======================= Gradient Descent ==========================
%
%梯度下降函数
%
% 
function [theta, J_history] = GradientDescent(X, Y, theta, alpha, iterations)

exanum = size(X, 1);
feanum = size(X, 2);

for iter = 1:iterations
    
    t = theta;
    H = X * theta;

    for j = 1:feanum
        temp(j, 1) = t(j, 1) -  (alpha / exanum) * sum((H - Y) .* X(:, j));
    end

    theta = temp;
    J_history(iter) = CostFunction(X, Y, theta);
    printf('迭代 %d 次, 此时损失函数为：J = %f\n', iter, J_history(iter));
end

end
