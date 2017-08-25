% ========================== Normal Equation ===========================
%
% 正规方程求解theta
%
% ==========================      Code       ===========================

function theta = NormalEquation(X, Y)

theta = pinv(X'*X)*X'*Y;

end
