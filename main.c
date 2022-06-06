#include <stdio.h>
#include <errno.h>
#include <stdlib.h>

#define MULTI 1000      // float*1000 -> int
#define COUNT_OF_DATA 500
#define KERNEL_SIZE 5
#define LAYER_1_CHANNEL 5
#define LAYER_2_CHANNEL 10
#define IMAGE_SIZE 28

#pragma DATA_SECTION (dataset, ".array_buf");
#pragma DATA_ALIGN (dataset, 16);
#pragma DATA_SECTION (labels, ".array_buf");
#pragma DATA_ALIGN (labels, 16);
#pragma DATA_SECTION (conv1_w, ".array_buf");
#pragma DATA_ALIGN (conv1_w, 16);
#pragma DATA_SECTION (conv1_b, ".array_buf");
#pragma DATA_ALIGN (conv1_b, 16);
#pragma DATA_SECTION (conv2_w, ".array_buf");
#pragma DATA_ALIGN (conv2_w, 16);
#pragma DATA_SECTION (conv2_b, ".array_buf");
#pragma DATA_ALIGN (conv2_b, 16);
#pragma DATA_SECTION (conv3_w, ".array_buf");
#pragma DATA_ALIGN (conv3_w, 16);
#pragma DATA_SECTION (conv3_b, ".array_buf");
#pragma DATA_ALIGN (conv3_b, 16);
#pragma DATA_SECTION (input, ".array_buf");
#pragma DATA_ALIGN (input, 16);
#pragma DATA_SECTION (layer1_conv, ".array_buf");
#pragma DATA_ALIGN (layer1_conv, 16);
#pragma DATA_SECTION (layer1_pool, ".array_buf");
#pragma DATA_ALIGN (layer1_pool, 16);
#pragma DATA_SECTION (layer2_conv, ".array_buf");
#pragma DATA_ALIGN (layer2_conv, 16);
#pragma DATA_SECTION (layer2_pool, ".array_buf");
#pragma DATA_ALIGN (layer2_pool, 16);
#pragma DATA_SECTION (layer3_conv, ".array_buf");
#pragma DATA_ALIGN (layer3_conv, 16);
#pragma DATA_SECTION (layer3_pool, ".array_buf");
#pragma DATA_ALIGN (layer3_pool, 16);
#pragma DATA_SECTION (output, ".array_buf");
#pragma DATA_ALIGN (output, 16);

// format HWCN
long dataset[COUNT_OF_DATA][IMAGE_SIZE][IMAGE_SIZE];
long labels[COUNT_OF_DATA];
long conv1_w[5][5][5];
long conv1_b[5];
long conv2_w[5][5][5][10];
long conv2_b[10];
long conv3_w[10][10];
long conv3_b[10];
long input[28][28];
long layer1_conv[24][24][5];
long layer1_pool[12][12][5];
long layer2_conv[8][8][10];
long layer2_pool[4][4][10];
long layer3_pool[10];
long layer3_conv[10];
int output;


void conv1() { // [28,28,1] * [5,5,1,5] -> [24,24,5]
    int n, h, w, x, y;
    for (n = 0; n < 5; n++) {
        for (h = 0; h < 24; h++) {
            for (w = 0; w < 24; w++) {
                layer1_conv[h][w][n] = 0;
                //compute convolution result of one output pixel
                for (x = 0; x < 5; x++) {
                    for (y = 0; y < 5; y++) {
                        layer1_conv[h][w][n] += input[h + x][w + y] * conv1_w[x][y][n];
                    }
                }
                layer1_conv[h][w][n] += conv1_b[n];
                //relu
                if (layer1_conv[h][w][n] < 0)layer1_conv[h][w][n] = 0;
            }
        }
    }
}

void pooling1() { // [24,24,5] -> [12,12,5]
    int c, h, w, x, y;
    for (c = 0; c < 5; c++) {
        for (h = 0; h < 12; h++) {
            for (w = 0; w < 12; w++) {
                layer1_pool[h][w][c] = 0;
                //compute max pooling result of one output pixel
                for (x = 0; x < 2; x++) {
                    for (y = 0; y < 2; y++) {
                        if (layer1_pool[h][w][c] < layer1_conv[h*2 + x][w*2 + y][c]) {
                            layer1_pool[h][w][c] = layer1_conv[h*2 + x][w*2 + y][c];
                        }
                    }
                }
            }
        }
    }
}


void conv2() { // [12,12,5] * [5,5,5,10] -> [8,8,10]
    int n, h, w, c, x, y;
    for (n = 0; n < 10; n++) {
        for (h = 0; h < 8; h++) {
            for (w = 0; w < 8; w++) {
                layer2_conv[h][w][n] = 0;
                //compute convolution result of one output pixel
                for (x = 0; x < 5; x++) {
                    for (y = 0; y < 5; y++) {
                        for (c = 0; c < 5; c++) {
                            layer2_conv[h][w][n] += layer1_pool[h + x][w + y][c] * conv2_w[x][y][c][n];
                        }
                    }
                }
                layer2_conv[h][w][n] += conv2_b[n];
                //relu
                if (layer2_conv[h][w][n] < 0)layer2_conv[h][w][n] = 0;
            }
        }
    }
}

void pooling2() { // [8,8,10] -> [4,4,10]
    int c, h, w, x, y;
    for (c = 0; c < 10; c++) {
        for (h = 0; h < 4; h++) {
            for (w = 0; w < 4; w++) {
                layer2_pool[h][w][c] = 0;
                //compute max pooling result of one output pixel
                for (x = 0; x < 2; x++) {
                    for (y = 0; y < 2; y++) {
                        if (layer2_pool[h][w][c] < layer2_conv[h*2 + x][w*2 + y][c]) {
                            layer2_pool[h][w][c] = layer2_conv[h*2 + x][w*2 + y][c];
                        }
                    }
                }
            }
        }
    }
}

void pooling3() { // [4,4,10] -> [1,1,10]
    int h, w, c;
    for (c = 0; c < 10; c++) {
        layer3_pool[c] = 0;
        //compute average pooling result of one output pixel
        for (h = 0; h < 4; h++) {
            for (w = 0; w < 4; w++) {
                layer3_pool[c] += layer2_pool[h][w][c] / 16;
            }
        }
    }
}

void conv3() { // [1,1,10] * [1,1,10,10] -> [1,1,10]
    int c, n;
    for (n = 0; n < 10; n++) {
        layer3_conv[n] = 0;
        //compute convolution result of one output pixel
        for (c = 0; c < 10; c++) {
            layer3_conv[n] += layer3_pool[c] * conv3_w[c][n];
        }
        layer3_conv[n] += conv3_b[n];
        //no need of softmax activation, as no need to compute loss function
    }
}

void model_run() {
    int i;
    conv1();
    pooling1();
    conv2();
    pooling2();
    pooling3();
    conv3();
    for (i = 0; i < 10; i++) {
        if (layer3_conv[i] > layer3_conv[output]) {
            output = i;
        }
    }
}

void get_weights() { // 'HWCN'format

    FILE * fp;
    int h, w, c, n;
    if (NULL == (fp = fopen("..\\data\\conv1_w.txt", "r"))) {
        printf("conv1_w open failed\n");
        exit(1);
    }
    printf("conv1_w open succeed...\n");
    // conv1_w.shape = [5,5,1,5]
    for (h = 0; h < 5; ++h) {
        for (w = 0; w < 5; ++w) {
            for (n = 0; n < 5; ++n) {
                fscanf(fp, "%ld", &conv1_w[h][w][n]);
            }
        }
    }
    printf("conv1_w load succeed!\n");
    fclose(fp);

    if (NULL == (fp = fopen("..\\data\\conv1_b.txt", "r"))) {
        printf("conv1_b open failed\n");
        exit(1);
    }
    printf("conv1_b open succeed...\n");
    // conv1_b.shape = [5]
    for (n = 0; n < 5; ++n) {
        fscanf(fp, "%ld", &conv1_b[n]);
    }
    printf("conv1_b load succeed!\n");
    fclose(fp);


    if (NULL == (fp = fopen("..\\data\\conv2_w.txt", "r"))) {
        printf("conv2_w open failed\n");
        exit(1);
    }
    printf("conv2_w open succeed...\n");
    // conv2_w.shape = [5,5,5,10]
    for (h = 0; h < 5; ++h) {
        for (w = 0; w < 5; ++w) {
            for (c = 0; c < 5; ++c) {
                for (n = 0; n < 10; ++n) {
                    fscanf(fp, "%ld", &conv2_w[h][w][c][n]);
                }
            }
        }
    }
    printf("conv2_w load succeed!\n");
    fclose(fp);

    if (NULL == (fp = fopen("..\\data\\conv2_b.txt", "r"))) {
        printf("conv2_b open failed\n");
        exit(1);
    }
    printf("conv2_b open succeed...\n");
    // conv2_b.shape = [10]
    for (n = 0; n < 10; ++n) {
        fscanf(fp, "%ld", &conv2_b[n]);
    }
    printf("conv2_b load succeed!\n");
    fclose(fp);


    if (NULL == (fp = fopen("..\\data\\conv3_w.txt", "r"))) {
        printf("conv3_w open failed\n");
        exit(1);
    }
    printf("conv3_w open succeed...\n");
    // conv3_w.shape = [1,1,10,10]
    for (c = 0; c < 10; ++c) {
        for (n = 0; n < 10; ++n) {
            fscanf(fp, "%ld", &conv3_w[c][n]);
        }
    }
    printf("conv3_w load succeed!\n");
    fclose(fp);

    if (NULL == (fp = fopen("..\\data\\conv3_b.txt", "r"))) {
        printf("conv3_b open failed\n");
        exit(1);
    }
    printf("conv3_b open succeed...\n");
    // conv3_b.shape = [10]
    for (n = 0; n < 10; ++n) {
        fscanf(fp, "%ld", &conv3_b[n]);
    }
    printf("conv3_b load succeed!\n");
    fclose(fp);
}

void get_dataset() { // 'NHW'format
    FILE * fp;
    int n, h, w;
    if (NULL == (fp = fopen("..\\data\\data.txt", "r"))) {
        printf("data open failed\n");
        exit(1);
    }
    printf("image data open succeed...\n");
    for (n = 0; n < COUNT_OF_DATA; ++n) {
        for (h = 0; h < 28; ++h) {
            for (w = 0; w < 28; ++w) {
                fscanf(fp, "%ld", &dataset[n][h][w]);
            }
        }
    }
    printf("image data load succeed!\n");
    fclose(fp);
}

void get_labels() {
    FILE * fp;
    int i;
    if (NULL == (fp = fopen("..\\data\\label.txt", "r"))) {
        printf("label open failed\n");
        exit(1);
    }
    printf("labels open succeed...\n");
    for (i = 0; i < COUNT_OF_DATA; i++) {
        fscanf(fp, "%ld", &labels[i]);
    }
    printf("labels load succeed!\n");
    fclose(fp);
}

void model_init() {
    get_weights();
    get_dataset();
    get_labels();
}

int main() {
    int label;
    int n, h, w;
    int right = 0;
    float acc;
    printf("weights always multi %d\n", MULTI);
    model_init();
    for (n = 0; n < COUNT_OF_DATA; ++n) {
        for (h = 0; h < 28; ++h) {
            for (w = 0; w < 28; ++w) {
                input[h][w] = dataset[n][h][w];
            }
        }
        label = labels[n];
        model_run();
        printf("predict is %d, label is %d, cnt is %d\n", output, label, n);
        if (output == label) {
            right++;
        }
    }
    acc = (float) right * 100 / (float) n;
    printf("dataset evaluation finished, acc is %.2f%%\n", acc);
    return 0;
}
