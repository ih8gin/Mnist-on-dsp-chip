import tensorflow as tf
from tensorflow.keras.layers import Input, Conv2D, MaxPool2D, AvgPool2D
from tensorflow.keras import Model
import numpy as np
from tensorflow_core.python.keras.callbacks import TensorBoard

conv1 = Conv2D(5, (5, 5), activation='relu', name='Conv_1')
conv2 = Conv2D(10, (5, 5), activation='relu', name='Conv_2')
conv3 = Conv2D(10, (1, 1), activation='softmax', name='Conv_3')

input_layer = Input(shape=(28, 28, 1))
layer_1_mid = conv1(input_layer)
layer_1_out = MaxPool2D((2, 2), name='Pool_1')(layer_1_mid)
layer_2_mid = conv2(layer_1_out)
layer_2_out = MaxPool2D((2, 2), name='Pool_2')(layer_2_mid)
layer_3_mid = AvgPool2D(4, 4, name='Pool_3')(layer_2_out)
layer_3_out = conv3(layer_3_mid)
#不加这一层1x1卷积层网络性能很差
#池化层能够有效的整合、抽象上下文信息，但不具有推断能力


model = Model(input_layer, layer_3_out)
model.summary()


def load_dataset():
    trainset_label = np.loadtxt('C:/Users/Vino/Desktop/dsp/conv/label.txt', dtype=int).reshape((10000, 1))
    trainset_data = np.loadtxt('C:/Users/Vino/Desktop/dsp/conv/data.txt').reshape((10000, 28, 28, 1))
    return trainset_data, trainset_label


def train():
    trainset_data, labels = load_dataset()
    trainset_label = np.zeros((10000, 1, 1, 10))
    for i in range(10000):
        trainset_label[i, 0, 0, labels[i][0]] = 1
    logdir = 'D:\project_files\Python\pythonProject\dsp\log'
    logging = TensorBoard(log_dir=logdir, histogram_freq=1)
    model.compile(optimizer='adam', loss='categorical_crossentropy')
    # 尝试了均方误差和交叉熵误差，均方误差下模型收敛性较差，使用交叉熵误差模型有效收敛，可能是因为均方误差语义不符计算的loss不能很好的与实际意义对应
    # 均方误差针对的是回归问题，交叉熵误差对应的是分类问题，本案例中要解决的是分类问题
    model.fit(trainset_data, trainset_label,
              validation_split=0.2,
              batch_size=8,
              epochs=1,
              verbose=2,
              shuffle=True,
              callbacks=[logging])
    model.save_weights('./model/20epoches.h5')

def evaluate():
    cnt = 0
    trainset_data, trainset_label = load_dataset()
    for i in range(10000):
        res = np.argmax(model(trainset_data[i:i+1,:,:,:]))
        if res == trainset_label[i]:
            cnt += 1
    print('acc = ' + str(cnt/10000.0))

def save_weights():
    MULTI = 1000
    # conv1_w [5,5,5]
    print('saving conv1_w...')
    with open('./model/conv1_w.txt', 'w') as f:
        conv1_w = model.get_layer(index=1).get_weights()[0]
        print(conv1_w.shape)
        for h in range(5):
            for w in range(5):
                for c in range(1):
                    for n in range(5):
                        f.write(str(int(conv1_w[h, w, c, n] * MULTI)) + '\n')
    # conv1_b [5]
    print('saving conv1_b...')
    with open('./model/conv1_b.txt', 'w') as f:
        conv1_b = model.get_layer(index=1).get_weights()[1]
        print(conv1_b.shape)
        for n in range(5):
            f.write(str(int(conv1_b[n] * MULTI)) + '\n')
    # conv1_w [5,5,5,10]
    print('saving conv2_w...')
    with open('./model/conv2_w.txt', 'w') as f:
        conv2_w = model.get_layer(index=3).get_weights()[0]
        print(conv2_w.shape)
        for h in range(5):
            for w in range(5):
                for c in range(5):
                    for n in range(10):
                        f.write(str(int(conv2_w[h, w, c, n] * MULTI)) + '\n')
    # conv2_b [10]
    print('saving conv2_b...')
    with open('./model/conv2_b.txt', 'w') as f:
        conv2_b = model.get_layer(index=3).get_weights()[1]
        print(conv2_b.shape)
        for n in range(10):
            f.write(str(int(conv2_b[n] * MULTI)) + '\n')
    # conv3_w [1,1,10,10]
    print('saving conv3_w...')
    with open('./model/conv3_w.txt', 'w') as f:
        conv3_w = model.get_layer(index=6).get_weights()[0]
        print(conv3_w.shape)
        for h in range(1):
            for w in range(1):
                for c in range(10):
                    for n in range(10):
                        f.write(str(int(conv3_w[h, w, c, n] * MULTI)) + '\n')
    # conv3_b [10]
    print('saving conv3_b...')
    with open('./model/conv3_b.txt', 'w') as f:
        conv3_b = model.get_layer(index=6).get_weights()[1]
        print(conv3_b.shape)
        for n in range(10):
            f.write((str(int(conv3_b[n] * MULTI))) + '\n')
    print('weights saved !')

model.load_weights('./200eps.h5')
# save_weights()
# evaluate()

conv1_w = np.zeros((5, 5, 5))
with open('./model/conv1_w.txt', 'r') as f:
    for h in range(5):
        for w in range(5):
            for n in range(5):
                conv1_w[h, w, n] = float(f.readline())
print(conv1_w)
print(model.get_layer(index=1).get_weights()[0])



# with open('./test5.22.txt', 'w') as file:
#     file.write(str())

# with open('C:/Users/Vino/Desktop/dsp/conv/data.txt') as file:
#     data = file
