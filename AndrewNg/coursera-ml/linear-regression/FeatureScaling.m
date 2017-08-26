% ======================== Feature Scaling ========================
%
% 数据归一化处理
%
% ========================       Code      ========================
function fsdata =  FeatureScaling(rdata)

% 数据归一化前
% subplot(a, b, c) a*b 表示格子数目,c表示格子索引
subplot(1, 2, 1);
bar(max(rdata));
hold on;
bar(min(rdata));
% 图片参数
xlabel('Feature');
ylabel('Value');
title('Raw Data');

% 数据归一化后
subplot(1, 2, 2);
% mean是求矩阵每一列的均值, std是求矩阵每一列的标准差,两者结果均为一维
% 矩阵. 矩阵的'-'和'./'运算过程中, octave会默认把结果平行复制成和data
% 同维度的矩阵.
bar(max((rdata - mean(rdata)) ./ std(rdata)));
hold on;
bar(min((rdata - mean(rdata)) ./ std(rdata)));
% 图片参数
xlabel('Feature');
ylabel('Value');
title('FeatureScaling');

% 保存图片
print png 'feature-scaling.png';

% 关闭图片
close;

end
