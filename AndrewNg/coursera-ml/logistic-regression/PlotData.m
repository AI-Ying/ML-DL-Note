% ==========================     Plot Data   =============================
%
% 分析数据、模型、画图
%
% ==========================       Code      =============================

function PlotData(x, y)

pos = find(y == 1);
neg = find(y == 0);

plot(x(pos,1), x(pos,2), 'b+', 'LineWidth', 2, 'MarkerSize', 7);
hold on;
plot(x(neg,1), x(neg,2), 'bo', 'MarkerFaceColor', 'c', 'MarkerSize', 7);

xlabel('Exam 1 score');
ylabel('Exam 2 score');
title('ModelAnalizing');
legend('Admitted', 'Not Admitted');

end
