# Mnist-on-dsp-chip
在TMS320C6416上实现卷积神经网络进行数字手写体识别<br>
run CNN on TMS320C6416

## 如何使用 How to Use?
在python上运行Build_Model.py可以实现模型的搭建、训练和参数导出，将模型参数放入conv\data路径下后，使用CCS打开工程，连接到dsp芯片后即可在硬件上运行模型进行预测。<br>
其中数据集已经通过阈值二值化转成0/1码，Model_test.py文件是用来对C语言实现的模型进行验证。

## 相关研究 Relative Work

本此实验使用的数据集为MNIST。MNIST 数据集来自美国国家标准与技术研究所, National Institute of Standards and Technology (NIST). 训练集 (training set) 由来自 250 个不同人手写的数字构成, 其中 50% 是高中学生, 50% 来自人口普查局 (the Census Bureau) 的工作人员. 测试集(test set) 也是同样比例的手写数字数据。
下面展示五种被广泛使用的模型：

### i.	 Baseline Liner Classifier

![pictures/basic%20linear%20classifier.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/f3bd78337ca8c68460ff4926a832c1db3926d06c/pictures/basic%20linear%20classifier.png)
<br>图1. 线性分类器<br><br>

  最简单的线性分类器。每个输入像素值构成每个输出单元的加权和。总和最高的输出单元表示输入字符的类别。因此，我们可以看到，图像被视为一维向量，并连接到一个10输出的向量。测试    集错误率为8.4%

### ii.	One-Hidden-Layer Fully Connected Multilayer NN

![pictures/one%20hidden%20layer%20fcnn.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/91b0d074c8b3de39ec9f5142cefe45f3521900eb/pictures/one%20hidden%20layer%20fcnn.png)
<br>图2. 单层隐藏层的全连接神经网络结构<br><br>

在输入层和输出层之间增加隐含层，隐含层神经元数量为300个，即20*20→300→10网络，测试集错误率为3.8%。将隐含层增加到1000个神经元，即20*20→1000→10网络，测试集错误率为3.6%，提升并不大。
  
### iii.	Two-Hidden-Layer Fully Connected Multilayer NN

![pictures/two%20hidden%20layer%20fcnn.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/91b0d074c8b3de39ec9f5142cefe45f3521900eb/pictures/two%20hidden%20layers%20fcnn.png)
<br>图3. 两层隐藏层的全连接神经网络结构<br><br>

在输入层和输出层之间增加两个隐藏层，，即20*20→300→100→10网络，测试集错误率为3.05%。增加隐含层到20*20→1000→150→10网络，测试集错误率为2.95%，提升并不大。
可以发现，通过增加隐藏层，错误率在降低，但这种改善越来越缓慢。增加某层网络神经元的数量不能有效提升模型的表现。

### iv.	LeNet-1

![pictures/LeNet1.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/91b0d074c8b3de39ec9f5142cefe45f3521900eb/pictures/LeNet1.png)
<br>图4. LeNet-1网络结构<br><br>

  在Lenet-1中，28*28的输入图像→4个24*24 feature maps卷积层(5*5 ) →平均池化层(2*2）→8个12*12 feature maps 卷积层(5*5) →平均池化层(2*2）→直接全连接后输出
  引入卷积和池化层后，LeNet-1对测试数据的错误率为1.7%
  值得注意的是，在作者发明LeNet时，他们使用平均池化层，输出2*2特征图的平均值。目前很多LeNet实现使用max pooling只输出2×2 feature map的最大值，这有助于加快训练速度。当选择最强的特征时，反向传播可以得到较大的梯度。
  
### v.	LeNet-4 

![pictures/LeNet4.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/91b0d074c8b3de39ec9f5142cefe45f3521900eb/pictures/LeNet4.png)
<br>图4. LeNet-4网络结构<br><br>

  在Lenet-4中，32*32的输入图像→4个28*28 feature maps卷积层(5*5 ) →平均池化层(2*2）→6个10*10 feature maps 卷积层(5*5) →平均池化层(2*2）→全连接到120个神经元→全连接到10个输出神经元
  在输出端增加了全连接层，测试集错误率为1.1%

### vi.	LeNet-5

![pictures/LeNet5.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/91b0d074c8b3de39ec9f5142cefe45f3521900eb/pictures/LeNet5.png)
<br>图5. LeNet-5网络结构<br><br>

  LeNet-5是最受初学者实践时欢迎的
  在Lenet-5中，32*32的输入图像→6个28*28 feature maps卷积层(5*5 ) →平均池化层(2*2）→16个10*10 feature maps 卷积层(5*5) →平均池化层(2*2）→全连接到120个神经元→全连接到10个输出神经元
  相比LeNet-4，增加了更多的feature map，测试集错误率为1.1%

## Design
设计之初，我的目标就在于尽最大可能的精简网络结构，较低运算量，于是选择使用全卷积神经网络（Fully Convolutional NN）有两个隐藏层（一次卷积一次池化）和一个输出头（平均池化+1*1卷积）。<br>
在输出端使用平均池化降维+预测器（只需要110个参数）代替直接使用全连接预测器（需要410个参数），可以减少参数规模，降低运算量，也可以加速训练时的模型收敛速度。
模型运算图为28*28输入层→5*24*24（5个5*5卷积核）→5*12*12（最大值池化）→10*8*8（10个5*5卷积核）→10*4*4（最大值池化）→10*1*1（平均值池化）→10输出头。
模型结构和示意图如下：<br>
 
![pictures/%E7%BD%91%E7%BB%9C%E7%BB%93%E6%9E%84.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/%E7%BD%91%E7%BB%9C%E7%BB%93%E6%9E%84.png)
<br>图6. 网络结构图<br><br>

![pictures/%E6%A8%A1%E5%9E%8B%E5%8F%82%E6%95%B0%E5%B1%95%E7%A4%BA.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/%E6%A8%A1%E5%9E%8B%E5%8F%82%E6%95%B0%E5%B1%95%E7%A4%BA.png)
<br>图7. 模型结构参数详情<br><br>

## Train

### i.	loss曲线
根据上述训练过程，结合tensorflow2内置的Earlystop方法，确定最佳迭代步数为238个epochs，训练过程中loss函数曲线及accuracy曲线如下：

![pictures/238eps_loss.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/91b0d074c8b3de39ec9f5142cefe45f3521900eb/pictures/238eps_loss.png)
<br>图8. 238个epochs下的loss函数曲线<br><br>

![pictures/238eps_acc.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/91b0d074c8b3de39ec9f5142cefe45f3521900eb/pictures/238eps_acc.png)
 <br>图9. 238个epochs下的mAP函数曲线<br><br>
 
最终达到测试集上mAP为0.9575<br>

![pictures/performance.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/8df6f37d4fe6ea499cfa1a9db793827df1c65007/pictures/performance.png)
<br>图10. 模型在训练集和测试集上的表现<br><br>

### ii.	混淆矩阵 Confusion Matrix
<br>
混淆矩阵反应了多分类模型对各个类别的特征学习情况，从中可以查看各种条件概率，从左上到右下的对角线上的概率为各个类别的召回率。从各个条件概率中，可以全面、直观的反应模型的优缺点，能够给研究人员提供明确的改进方向。

![pictures/confusion_matrix.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/confusion_matrix.png)
<br>图11. 训练238epochs的混淆矩阵<br><br>

从混淆矩阵可以看出，模型对各个类别的学习情况都很优秀，没有明显的缺点。对错误分类的深入分析在下一节中详细展开说明。

## 难例分析 Analysis
将错误案例全部导出后，经过分析，发现导致模型预测错误的原因主要是由于输入图片可能存在三个方面的问题：字迹不清晰，存在多余的笔划，书写歪斜不正：

![pictures/%E9%83%A8%E5%88%86%E9%9A%BE%E4%BE%8B%E5%B1%95%E7%A4%BA.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/%E9%83%A8%E5%88%86%E9%9A%BE%E4%BE%8B%E5%B1%95%E7%A4%BA.png)
<br>图12. 部分难例展示<br><br>

### 字迹不清
有些输入图片中笔划不清，断断续续，这是由于数据集本身的问题，或者是对原始图片进行二值化处理时阈值选择不合理导致的。模型会被不连续的笔划干扰，说明模型输出层单元的感受野不足，不能有效整合全局信息。

![pictures/%E9%9A%BE%E4%BE%8B-%E5%AD%97%E8%BF%B9%E4%B8%8D%E6%B8%85.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/%E9%9A%BE%E4%BE%8B-%E5%AD%97%E8%BF%B9%E4%B8%8D%E6%B8%85.png)
<br>图13. 典型字迹不清的难例<br><br>

这个问题浅层的模型很难解决，需要加深网络层数增大输出层参数的感受野；或者在模型头部使用传统的全连接输出层取代平均值池化+1*1卷积的卷积输出层，牺牲模型精简程度也能有效改善感受野不足的问题。
### 多余比划
有些输入图片中数字的写法很特殊，模型对有个人书写特色的数字体的识别正确率明显低于规范书写体，其中比较典型的几个问题有：
* 0不闭合
* 0写成扁平状
* 1的书写模仿打印体
* 2的左下不是折线而是重叠的弧线
* 7在中间多加一条短划线

![pictures/%E9%9A%BE%E4%BE%8B-%E4%B9%A6%E5%86%99%E4%B9%A0%E6%83%AF%E5%B7%AE%E5%BC%82.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/%E9%9A%BE%E4%BE%8B-%E4%B9%A6%E5%86%99%E4%B9%A0%E6%83%AF%E5%B7%AE%E5%BC%82.png)
<br>图14. 书写习惯差异导致的难例<br><br>

除了书写习惯的差异外，部分输入还存在错误的多余笔划，而模型在尝试识别数字4和5时对错误的多余笔划尤其敏感，这与数字4和5的形状特征导致的。

![pictures/%E9%9A%BE%E4%BE%8B-%E5%A4%9A%E4%BD%99%E7%AC%94%E5%88%92.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/%E9%9A%BE%E4%BE%8B-%E5%A4%9A%E4%BD%99%E7%AC%94%E5%88%92.png)
<br>图15. 存在错误多余笔划的难例<br><br>

要解决这个问题需要增强模型的泛化能力。可以在训练过程中进行数据增强，通过难例挖掘来加强对模型上述两个问题的适应性。但数据增强的效果是有限的，这受制于模型的参数规模，目前采用的模型参数规模太小，在不增大规模的情况下，很难大幅增强泛化能力，并且模型会存在无法收敛的风险。
###  歪曲不正
输入的数据中还有一部分，存在角度偏移的问题，特定的数字对角度偏移尤其敏感
 
![pictures/%E9%9A%BE%E4%BE%8B-%E8%A7%92%E5%BA%A6%E5%81%8F%E7%A7%BB.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/%E9%9A%BE%E4%BE%8B-%E8%A7%92%E5%BA%A6%E5%81%8F%E7%A7%BB.png)
<br>图16. 由于角度偏移导致的难例<br><br>

要解决这个问题可以从两个方面入手：
* 其一是增强模型的泛化能力，但是这需要付出比较大的代价（训练步长与参数规模）；
* 其二是在模型的颈部增加一个角度归一化模块，例如通过旋转将二值化判定为1的最高点和最低点在纵轴上对齐，裁去出框部分，空白部分补0。
### 其他

![pictures/%E9%9A%BE%E4%BE%8B-%E5%85%B6%E4%BB%96.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/cb831740a41b4ea293c0d690ef7bc62a1d40b1e0/pictures/%E9%9A%BE%E4%BE%8B-%E5%85%B6%E4%BB%96.png)
<br>图17. 其他的一些难例<br><br>

其他的难例主要出现在68、179这两组中，初步分析可能是由于卷积核太大了，细节提取有些粗糙。将5*5的单层卷积核改为3*3的双层卷积核，也许可以改善这一问题。这样做也能减少参数数量，但是会增加运算量。

## Deploy on C6416

![pictures/load_int.png](https://github.com/ih8gin/Mnist-on-dsp-chip/blob/66835a75bd0e4e7678ef26673182db9ba4a1e44a/pictures/load_int.png)
<br>图22. C6416部署结果

