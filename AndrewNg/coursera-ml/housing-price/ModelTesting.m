% ============================ Testing Model ===============================
%
% 模型测试
%
% ============================      Code     ===============================

function ModelTesting(X, Y, X_test, Y_test, theta)

% 训练模型结果
train = X * theta;
% 模型测试样本的实际结果
test = Y_test;

% 测试模型是否适合
plot(X(:,2), train, '-');
hold on;
plot(X_test(:,2), test, '.');
legend('training data', 'testing data');

% 保存图片
print png 'train-test.png'

% 关闭图片
close

end
