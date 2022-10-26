import urllib.request
import os
import glob
import numpy as np
from tensorflow.python.keras import layers
from tensorflow import keras 
import tensorflow as tf
import matplotlib.pyplot as plt
from random import randint

class DrawingToLabel:
    def __init__(self):
        pass
    
    def readClasses(self):
        f = open("labels.txt","r")
        self.classes = f.readlines()
        f.close()
        self.classes = [c.replace('\n','').replace(' ','_') for c in classes]
    
    def downloadDataset(self, base):
        os.mkdir(data)
        for c in self.classes:        
            cls_url = c.replace('_', '%20')
            path = self.base+cls_url+'.npy'
            print(path)
            urllib.request.urlretrieve(path, 'data/'+c+'.npy')
        print(len(os.listdir('data')))

    def load_data(self, root = 'data', vfold_ratio=0.2, max_items_per_class= 4000 ):
        all_files = glob.glob(os.path.join(root, '*.npy'))

        #initialize variables 
        x = np.empty([0, 784])
        y = np.empty([0])
        self.class_names = []

        #load each data file 
        for idx, file in enumerate(all_files):
            data = np.load(file)
            data = data[0: max_items_per_class, :]
            labels = np.full(data.shape[0], idx)

            x = np.concatenate((x, data), axis=0)
            y = np.append(y, labels)

            class_name, ext = os.path.splitext(os.path.basename(file))
            self.class_names.append(class_name)

        data = None
        labels = None
        
        #randomize the dataset 
        permutation = np.random.permutation(y.shape[0])
        x = x[permutation, :]
        y = y[permutation]

        #separate into training and testing (80-20 split by default)
        vfold_size = int(x.shape[0]/100*(vfold_ratio*100))

        self.x_test = x[0:vfold_size, :]
        self.y_test = y[0:vfold_size]

        self.x_train = x[vfold_size:x.shape[0], :]
        self.y_train = y[vfold_size:y.shape[0]]

    def plotRandom(self):
        plt.ion() 
        idx = randint(0, len(self.x_train))
        plt.imshow(self.x_train[idx].reshape(28,28)) 
        print(self.class_names[int(self.y_train[idx].item())])

    def preProcess(self):
        # Reshape and normalize
        num_classes = len(self.classes)
        self.x_train = self.x_train.reshape(self.x_train.shape[0], image_size, image_size, 1).astype('float32')
        self.x_test = self.x_test.reshape(self.x_test.shape[0], image_size, image_size, 1).astype('float32')

        self.x_train /= 255.0
        self.x_test /= 255.0

        # Convert class vectors to class matrices
        self.y_train = keras.utils.to_categorical(self.y_train, num_classes)
        self.y_test = keras.utils.to_categorical(self.y_test, num_classes)

    def buildModel(self):
        model = keras.Sequential()
        model.add(layers.Convolution2D(16, (3, 3),
                                padding='same',
                                input_shape=self.x_train.shape[1:], activation='relu'))
        model.add(layers.MaxPooling2D(pool_size=(2, 2)))
        model.add(layers.Convolution2D(32, (3, 3), padding='same', activation= 'relu'))
        model.add(layers.MaxPooling2D(pool_size=(2, 2)))
        model.add(layers.Convolution2D(64, (3, 3), padding='same', activation= 'relu'))
        model.add(layers.MaxPooling2D(pool_size =(2,2)))
        model.add(layers.Flatten(input_shape=self.x_train.shape[1:]))
        model.add(layers.Dense(128, activation='relu'))
        model.add(layers.Dense(100, activation='softmax')) 

        # Train model
        adam = tf.optimizers.Adam()
        model.compile(loss='categorical_crossentropy',
                    optimizer=adam,
                    metrics=['top_k_categorical_accuracy'])


    def trainModel(self):
       model.fit(x = self.x_train, y = self.y_train, validation_split=0.1, batch_size = 256, verbose=2, epochs=5)

    def evaluateModel(self):
        score = model.evaluate(self.x_test, self.y_test, verbose=0)
        print('Test accuarcy: {:0.2f}%'.format(score[1] * 100))