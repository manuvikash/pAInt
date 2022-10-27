from Paint import draw
from Paint import preProcessor
from tensorflow import keras
import numpy as np

counter = 0
d = draw.Interface(800,800)

def play(d, counter):
    for i in range(5):
        d.init()
        p = preProcessor.PreProcessor()
        img_arr = p.dta("image.png")

        f = open("class_names.txt","r")
        class_names = f.readlines()
        class_names = [c.replace('\n','').replace(' ','_') for c in class_names]
        f.close()

        model = keras.models.load_model('ClassifierModel')
        pred = model.predict(np.expand_dims(img_arr, axis=0))[0]
        ind = (-pred).argsort()[:10]
        latex = [class_names[x] for x in ind]
        prompt = d.getPrompt().lower().strip().replace(" ", "_")
        if(prompt in latex):
            print("Correct!")
            counter+=1
        else:
            print("Incorrect!")
    print("Score: ",counter)
    retry = d.gameover(counter)
    if(retry):
        nc = 0
        play(d,nc)
    else:
        return

play(d,counter)

