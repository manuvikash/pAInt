import numpy as np
from PIL import Image
import matplotlib.pyplot as plt

class PreProcessor:
    def __init__(self):
        pass

    def rgbToGrey(self,rgb):
        return np.dot(rgb[...,:3], [0.299, 0.587, 0.144])

    def dta(self, img):
        im = np.array(Image.open(img))
        im = self.rgbToGrey(im)
        # print("Before trimming:",im.shape)
        im_trim = im[50:750, 50:750]
        # print("After trimming:",im_trim.shape)
        img = Image.fromarray(im_trim)
        load_img_rz = np.array(img.resize((28,28)))
        load_img_rz.reshape(28,28,1)
        Image.fromarray(load_img_rz)
        # print("After resizing:",load_img_rz.shape)
        # plt.imshow(load_img_rz)
        # plt.show()
        return load_img_rz


