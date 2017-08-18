% ======================= Gradient Descent ==========================
%
%梯度下降函数
%
% 
function theta = GradientDescent(X, Y, theta, alpha, iterations)

exanum = size(X, 1);
feanum = size(X, 2);


for iter = 1:iterations
    
    t = theta;
    H = X * theta;

    %for j = 1:feanum
    %        temp(j, 1) = t(j, 1) -  (alpha / exanum) * sum((H - Y) .* X(:, j));
    %end

    t0 = theta(1, 1);
    t1 = theta(2, 1);
    t2 = theta(3, 1);
    t3 = theta(4, 1);
    t4 = theta(5, 1);
    t5 = theta(6, 1);
    t6 = theta(7, 1);
    t7 = theta(8, 1);
    t8 = theta(9, 1);
    t9 = theta(10, 1);
    t10 = theta(11, 1);
    t11 = theta(12, 1);
    t12 = theta(13, 1);
    t13 = theta(14, 1);

    temp0 = t0 - (alpha / exanum) * sum((H-Y));
    temp1 = t1 - (alpha / exanum) * sum((H-Y) .* X(:, 2));
    temp2 = t2 - (alpha / exanum) * sum((H-Y) .* X(:, 3));
    temp3 = t3 - (alpha / exanum) * sum((H-Y) .* X(:, 4));
    temp4 = t4 - (alpha / exanum) * sum((H-Y) .* X(:, 5));
    temp5 = t5 - (alpha / exanum) * sum((H-Y) .* X(:, 6));
    temp6 = t6 - (alpha / exanum) * sum((H-Y) .* X(:, 7));
    temp7 = t7 - (alpha / exanum) * sum((H-Y) .* X(:, 8));
    temp8 = t8 - (alpha / exanum) * sum((H-Y) .* X(:, 9));
    temp9 = t9 - (alpha / exanum) * sum((H-Y) .* X(:, 10));
    temp10 = t10 - (alpha / exanum) * sum((H-Y) .* X(:, 11));
    temp11 = t11 - (alpha / exanum) * sum((H-Y) .* X(:, 12));
    temp12 = t12 - (alpha / exanum) * sum((H-Y) .* X(:, 13));
    temp13 = t13 - (alpha / exanum) * sum((H-Y) .* X(:, 14));

    theta = [temp0;temp1;temp2;temp3;temp4;temp5;temp6;temp7;temp8;temp9;temp10;temp11;temp12;temp13];
    J = CostFunction(X, Y, theta);
    printf('迭代 %d 次, 此时损失函数为：J = %f\n', iter, J);
end

end
