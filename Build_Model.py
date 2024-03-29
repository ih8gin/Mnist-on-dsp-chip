import matplotlib.pyplot as plt
import tensorflow as tf
from tensorflow.keras.layers import Input, Conv2D, MaxPool2D, AvgPool2D
from tensorflow.keras import Model
import numpy as np
from tensorflow_core.python.keras.callbacks import TensorBoard


conv1 = Conv2D(5, (5, 5), activation='relu', name='Conv_1')
conv2 = Conv2D(10, (5, 5), activation='relu', name='Conv_2')
conv3 = Conv2D(10, (1, 1), activation='softmax', name='Conv_3')

def generate_BLC():# basa liner classifier
    # 28*28 -> 10
    input_layer = Input(shape=(28, 28, 1))
    layer0 = Flatten()(input_layer)
    layer1 = Dense(10, activation='relu')(layer0)
    return Model(input_layer, layer1)

def generate_FCN1():# One-Hidden-Layer Fully Connected Multilayer NN
    # 28*28 -> 300 -> 10
    input_layer = Input(shape=(28, 28, 1))
    layer0 = Flatten()(input_layer)
    layer1 = Dense(300, activation='relu')(layer0)
    layer2 = Dense(10, activation='relu')(layer1)
    return Model(input_layer, layer2)

def generate_FCN2():# Two-Hidden-Layer Fully Connected Multilayer NN
    # 28*28 -> 300 -> 100 -> 10
    return Model()

def generate_LeNet5():# LeNet5
    # conv: 6*5*5
    # average pooling
    # conv: 16*5*5
    # 28*28 -> 300 -> 10
    # fcn: 120
    # fcn: 10
    return Model()

def generate_slimNet():
    input_layer = Input(shape=(28, 28, 1))
    layer_1_mid = conv1(input_layer)
    layer_1_out = MaxPool2D((2, 2), name='Pool_1')(layer_1_mid)
    layer_2_mid = conv2(layer_1_out)
    layer_2_out = MaxPool2D((2, 2), name='Pool_2')(layer_2_mid)
    layer_3_mid = AvgPool2D(4, 4, name='Pool_3')(layer_2_out)
    layer_3_out = conv3(layer_3_mid)
    #不加这一层1x1卷积层网络性能很差
    #池化层能够有效的整合、抽象上下文信息，但不具有推断能力
    return Model(input_layer, layer_3_out)


def load_dataset():
    trainset_label = np.loadtxt('C:/Users/Vino/Desktop/dsp/conv/data/label.txt', dtype=int).reshape((10000, 1))
    trainset_data = np.loadtxt('C:/Users/Vino/Desktop/dsp/conv/data/data.txt').reshape((10000, 28, 28, 1))
    return trainset_data, trainset_label


def train(type):
    trainset_data, labels = load_dataset()
    if type == 1:
        trainset_label = np.zeros((10000, 1, 1, 10))
        for i in range(10000):
            trainset_label[i, 0, 0, labels[i][0]] = 1
    elif type == 2:
        trainset_label = np.zeros((10000, 10))
        for i in range(10000):
            trainset_label[i, labels[i][0]] = 1
    logdir = 'D:\project_files\Python\pythonProject\dsp\log'
    logging = TensorBoard(log_dir=logdir, histogram_freq=1)
    model.compile(optimizer='adam', loss='categorical_crossentropy')
    # 尝试了均方误差和交叉熵误差，均方误差下模型收敛性较差，使用交叉熵误差模型有效收敛，可能是因为均方误差语义不符计算的loss不能很好的与实际意义对应
    # 均方误差针对的是回归问题，交叉熵误差对应的是分类问题，本案例中要解决的是分类问题
    model.fit(trainset_data, trainset_label,
              validation_split=0.2,
              batch_size=8,
              epochs=2,
              verbose=2,
              shuffle=True,
              callbacks=[logging])
    model.save_weights('./model/test.h5')

def plot_confusion_matrix(confusion_matrix, save_path, title, class_name):
    confusion_matrix = confusion_matrix.astype('float') / confusion_matrix.sum(axis=1)[:, np.newaxis]

    np.set_printoptions(precision=2)

    ind_array = np.arange(len(class_name))
    x, y = np.meshgrid(ind_array, ind_array)
    for x_val, y_val in zip(x.flatten(), y.flatten()):
        condition_prob = confusion_matrix[y_val, x_val]
        plt.text(x_val, y_val, "%0.2f"%(condition_prob,),
                 color='black', fontsize=5, va='center', ha='center')
    plt.imshow(confusion_matrix, interpolation='nearest', cmap=plt.cm.Set3)
    plt.title(title)
    plt.colorbar()
    xlocations = np.array(range(len(class_name)))
    plt.xticks(xlocations, class_name, rotation=90)
    plt.yticks(xlocations, class_name)
    plt.ylabel('Label')
    plt.xlabel('Prediction')

    tick_marks = np.array(range(len(class_name))) + 0.5
    plt.gca().set_xticks(tick_marks, minor=True)
    plt.gca().set_yticks(tick_marks, minor=True)
    plt.gca().xaxis.set_ticks_position('none')
    plt.gca().yaxis.set_ticks_position('none')
    plt.grid(True, which='minor', linestyle='-')
    plt.gcf().subplots_adjust(bottom=0.15)

    plt.savefig(save_path, format='png')
    plt.show()


def evaluate():
    cnt1 = 0
    cnt2 = 0
    confusion_matrix = np.zeros((10, 10))
    trainset_data, trainset_label = load_dataset()

    for i in range(8000):
        res = np.argmax(model(trainset_data[i:i+1,:,:,:]))
        if res == trainset_label[i]:
            cnt1 += 1
        if i % 100 == 0:
            print(str(i) + " / 10000 ......")
    for i in range(8000, 10000):
        res = np.argmax(model(trainset_data[i:i+1,:,:,:]))
        confusion_matrix[trainset_label[i], res] += 1
        if res == trainset_label[i]:
            cnt2 += 1
        else:
            plt.imshow(trainset_data[i:i + 1, :, :, :].reshape(28, 28))
            plt.title(res)
            plt.savefig("./wrong_predictions/" + "No " + str(i) + str(res) + " for " + str(trainset_label[i]) + '.png',
                        format='png')
        if i % 100 == 0:
            print(str(i) + " / 10000 ......")
    print('acc on train set = ' + str(cnt1/8000.0))
    print('acc on validation set = ' + str(cnt2/2000.0))
    plot_confusion_matrix(confusion_matrix, './confusion_matrix.png', 'Confusion Matrix', np.arange(10))


def save_weights_as_float():
    # conv1_w [5,5,5]
    print('saving conv1_w...')
    with open('./model/conv1_w_float.txt', 'w') as f:
        conv1_w = model.get_layer(index=1).get_weights()[0]
        print(conv1_w.shape)
        for h in range(5):
            for w in range(5):
                for c in range(1):
                    for n in range(5):
                        f.write(str(conv1_w[h, w, c, n]) + '\n')
    # conv1_b [5]
    print('saving conv1_b...')
    with open('./model/conv1_b_float.txt', 'w') as f:
        conv1_b = model.get_layer(index=1).get_weights()[1]
        print(conv1_b.shape)
        for n in range(5):
            f.write(str(conv1_b[n]) + '\n')
    # conv1_w [5,5,5,10]
    print('saving conv2_w...')
    with open('./model/conv2_w_float.txt', 'w') as f:
        conv2_w = model.get_layer(index=3).get_weights()[0]
        print(conv2_w.shape)
        for h in range(5):
            for w in range(5):
                for c in range(5):
                    for n in range(10):
                        f.write(str(conv2_w[h, w, c, n]) + '\n')
    # conv2_b [10]
    print('saving conv2_b...')
    with open('./model/conv2_b_float.txt', 'w') as f:
        conv2_b = model.get_layer(index=3).get_weights()[1]
        print(conv2_b.shape)
        for n in range(10):
            f.write(str(conv2_b[n]) + '\n')
    # conv3_w [1,1,10,10]
    print('saving conv3_w...')
    with open('./model/conv3_w_float.txt', 'w') as f:
        conv3_w = model.get_layer(index=6).get_weights()[0]
        print(conv3_w.shape)
        for h in range(1):
            for w in range(1):
                for c in range(10):
                    for n in range(10):
                        f.write(str(conv3_w[h, w, c, n]) + '\n')
    # conv3_b [10]
    print('saving conv3_b...')
    with open('./model/conv3_b_float.txt', 'w') as f:
        conv3_b = model.get_layer(index=6).get_weights()[1]
        print(conv3_b.shape)
        for n in range(10):
            f.write((str(conv3_b[n])) + '\n')
    print('weights saved !')

def save_weights_as_int():
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


model = generate_BLC()
model.summary()
train(2)
