import matplotlib.pyplot as plt
import numpy as np
import tensorflow as tf

kernel_size = 5
max_pooling_size = 2

dataset = np.zeros((10000, 28, 28))
labels = np.zeros(10000)
conv1_w = np.zeros((5, 5, 5))
conv1_b = np.zeros(5)
conv2_w = np.zeros((5, 5, 5, 10))
conv2_b = np.zeros(10)
conv3_w = np.zeros((10, 10))
conv3_b = np.zeros(10)
input_data = np.zeros((28, 28))
layer1_conv = np.zeros((24, 24, 5))
layer1_pool = np.zeros((12, 12, 5))
layer2_conv = np.zeros((8, 8, 10))
layer2_pool = np.zeros((4, 4, 10))
layer3_conv = np.zeros(10)
layer3_pool = np.zeros(10)


def load_weights():
    # load conv1_w [5, 5, 1, 5]
    print('loading conv1_w...')
    with open('./model/conv1_w.txt', 'r') as f:
        for h in range(5):
            for w in range(5):
                for n in range(5):
                    conv1_w[h, w, n] = float(f.readline())
    # load conv1_b [5]
    print('loading conv1_b...')
    with open('./model/conv1_b.txt', 'r') as f:
        for n in range(5):
            conv1_b[n] = float(f.readline())

    # load conv2_w [5, 5, 5, 10]
    print('loading conv2_w...')
    with open('./model/conv2_w.txt', 'r') as f:
        for h in range(5):
            for w in range(5):
                for c in range(5):
                    for n in range(10):
                        conv2_w[h, w, c, n] = float(f.readline())
    # load conv2_b [10]
    print('loading conv2_b...')
    with open('./model/conv2_b.txt', 'r') as f:
        for n in range(10):
            conv2_b[n] = float(f.readline())

    # load conv3_w [1, 1, 10, 10]
    print('loading conv3_w...')
    with open('./model/conv3_w.txt', 'r') as f:
        for c in range(10):
            for n in range(10):
                conv3_w[c, n] = float(f.readline())
    # load conv3_b [10]
    print('loading conv3_b...')
    with open('./model/conv3_b.txt', 'r') as f:
        for n in range(10):
            conv3_b[n] = float(f.readline())


def load_datasets():
    # load datasets [10000, 28, 28]
    print('loading datasets...')
    with open('./model/data.txt', 'r') as f:
        for n in range(10000):
            for h in range(28):
                for w in range(28):
                    dataset[n, h, w] = float(f.readline())


def load_labels():
    # load labels [10000]
    print('loading labels...')
    with open('./model/label.txt', 'r') as f:
        for n in range(10000):
            labels[n] = float(f.readline())


def conv1():  # [28,28,1] * [5,5,1,5] -> [24,24,5]
    for n in range(5):
        for h in range(24):
            for w in range(24):
                layer1_conv[h, w, n] = 0
                # compute convolution result of one output pixel
                for x in range(5):
                    for y in range(5):
                        layer1_conv[h, w, n] += input_data[h + x, w + y] * conv1_w[x, y, n]
                layer1_conv[h, w, n] += conv1_b[n]
                # relu
                if layer1_conv[h, w, n] < 0:
                    layer1_conv[h, w, n] = 0

def conv1_check_in_np():
    for n in range(5):
        for h in range(24):
            for w in range(24):
                x = np.sum(np.multiply(input_data[h:h+5, w:w+5], conv1_w[:, :, n])) + conv1_b[n]
                # relu
                if x < 0:
                    x = 0
                if x != layer1_conv[h, w, n]:
                    print("Error at ["+str(w)+","+str(h)+","+str(n)+"] ! np_res = " + str(x) + "but forloop_res = " + str(layer1_conv[h, w, n]))

def pooling1():  # [24,24,5] -> [12,12,5]
    for c in range(5):
        for h in range(12):
            for w in range(12):
                layer1_pool[h, w, c] = layer1_conv[h*2, w*2, c]
                # compute max pooling result of one output pixel
                for x in range(2):
                    for y in range(2):
                        if layer1_pool[h, w, c] < layer1_conv[h * 2 + x, w * 2 + y, c]:
                            layer1_pool[h, w, c] = layer1_conv[h * 2 + x, w * 2 + y, c]

def pooling1_check_in_np():
    for c in range(5):
        for h in range(12):
            for w in range(12):
                # compute max pooling result of one output pixel
                slice = layer1_conv[h*2:h*2+2, w*2:w*2+2, c]
                x = np.max(slice)
                if x != layer1_pool[h, w, c]:
                    print("Error at ["+str(w)+","+str(h)+","+str(c)+"] !")

def conv2():  # [12,12,5] * [5,5,5,10] -> [8,8,10]
    for n in range(10):
        for h in range(8):
            for w in range(8):
                layer2_conv[h, w, n] = 0
                # compute convolution result of one output pixel
                for x in range(5):
                    for y in range(5):
                        for c in range(5):
                            layer2_conv[h, w, n] += layer1_pool[h + x, w + y, c] * conv2_w[x, y, c, n]
                layer2_conv[h, w, n] += conv2_b[n]
                # relu
                if layer2_conv[h, w, n] < 0:
                    layer2_conv[h, w, n] = 0

def pooling2():  # [8,8,10] -> [4,4,10]
    for c in range(10):
        for h in range(4):
            for w in range(4):
                layer2_pool[h, w, c] = layer2_conv[h*2, w*2, c]
                # compute max pooling result of one output pixel
                for x in range(2):
                    for y in range(2):
                        if layer2_pool[h, w, c] < layer2_conv[h * 2 + x, w * 2 + y, c]:
                            layer2_pool[h, w, c] = layer2_conv[h * 2 + x, w * 2 + y, c]

def pooling3():  # [4,4,10] -> [1,1,10]
    for c in range(10):
        layer3_pool[c] = 0
        # compute average pooling result of one output pixel
        for x in range(4):
            for y in range(4):
                layer3_pool[c] += int(layer2_pool[x, y, c] / 16.0)

def conv3():
    for n in range(10):
        layer3_conv[n] = 0
        # compute convolution result of one output pixel
        for c in range(10):
            layer3_conv[n] += layer3_pool[c] * conv3_w[c][n]
        layer3_conv[n] += conv3_b[n]
        # no need of softmax activation

def get_max():
    pred = 0
    for n in range(10):
        if layer3_conv[n] > layer3_conv[pred]:
            pred = n
    return pred


def model_init():
    load_datasets()
    load_labels()
    load_weights()


model_init()
cnt = 0
size = 500
for i in range(size):
    for x in range(28):
        for y in range(28):
            input_data[x, y] = dataset[i, x, y]
    conv1()
    pooling1()
    conv2()
    pooling2()
    pooling3()
    conv3()
    # print(tf.nn.softmax(layer3_conv))
    print(str(i)+": pred="+str(get_max())+", label="+str(int(labels[i])))
    if get_max() == int(labels[i]):
        cnt += 1
print(str(cnt / size))

# plt.imshow(input_data)
# plt.show()

## 卷积时权重加错了，第二次计算时没有把存储清零，求最大值的时候把0cut掉了
## 由于使用forloop没有利用到处理器的并行化处理，处理速度很慢、效率很低，可以进一步学习im2算法