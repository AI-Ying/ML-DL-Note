function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% ========== for i >= 1 ==========

m = size(X, 1);
hx = sigmoid(X * theta);

real_theta = theta(2:end);
 
j = sum(-y .* log(hx) .- (1 .- y) .* log(1 .- hx)) / m;
offset = lambda * sum(real_theta .^ 2) / (2 * m);

J = j + offset;

mask = ones(size(theta));
mask(1) = 0;

offset = lambda / m * (theta .* [0; ones(length(theta)-1, 1)]);
grad = (((hx .- y)' * X) / m)' .+ offset;

% =============================================================

end
