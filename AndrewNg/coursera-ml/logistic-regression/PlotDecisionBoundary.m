% ============================= Plot DecisionBoundary ===============================
%
% 画出分界线
%
% =============================          Code         ===============================

function PlotDecisionBoundary(X, Y)

% 数据分析图
PlotData(X(:,2:3), Y);
hold on;

if size(X, 2) <= 3

    % 这里分割线是拟合成直线,所以只需要两个点就可以,也即两点确定一条直线
    plot_X = [min(X(:, 2))-2, max(X(:,2))+2];
    plot_Y = (-1 ./ theta(3)) .* ( (theta(2) .* plot_X) + theta(1) );
    plot(plot_X, plot_Y, 'r;Decision Boundary;');
    axis([30, 100, 30, 100]);

else

end

end
