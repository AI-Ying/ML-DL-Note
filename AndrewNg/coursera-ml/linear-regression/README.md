## 房价预测
------
### 文件说明

1. Train: 训练脚本函数
2. ModelAnalizing:对数据模型的大概分析，通过绘制一些散点图，判断特征feature和标注值的关系，从而进行数据模型的建立。

3. FeatureScaling:对数据是否需要归一化处理分析，如果数据波动较大，建议进行数据归一化。

4. DataProcessingHoldOut:使用留出法进行对数据分割处理，数据集分为训练集和测试集，前80%的样本作为训练集，剩余的作为测试集。同时对数据进行归一化和特征添加。 
5. DataProcessingBootStrapping:使用自助法对数据随机抽取处理，使用的是统计学的方法。对于一个m个样本的数据集来说，随机放回的抽取m次，总有一部分数据样本不被抽到，其概率可以计算出来（1/e)。同时对数据进行归一化和特征添加处理。
6. CostFunction:损失函数（代价函数）。
7. GradientDescent: 梯度下降函数，求解最优theta。
8. NormalEquation: 正常求解最优theta,类似于我们求解方程式。
9. ModelTesting: 使用测试集对训练好的模型进行测试。
10. 数据集
  - ex1data.txt: coursera 提供的数据集
  - housing.data: UCI提供的数据集(PaddlePaddle中使用的数据集）