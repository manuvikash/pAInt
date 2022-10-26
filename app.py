from Paint import draw
from Paint import preProcessor
from tensorflow import keras
import numpy as np

d = draw.Interface(800,800)
d.init()
p = preProcessor.PreProcessor()
img_arr = p.dta("image.png")

f = open("class_names.txt","r")
class_names = f.readlines()
class_names = [c.replace('\n','').replace(' ','_') for c in class_names]
f.close()

model = keras.models.load_model('ClassifierModel')
pred = model.predict(np.expand_dims(img_arr, axis=0))[0]
ind = (-pred).argsort()[:5]
latex = [class_names[x] for x in ind]
print(latex)

