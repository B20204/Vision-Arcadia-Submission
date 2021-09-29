import time
import tensorflow as tf
import cv2
import numpy as np
from matplotlib import pyplot as plt
import pyautogui as pyg
imgD = 0

def capture_image():
    cam = cv2.VideoCapture(0)

    cv2.namedWindow("test")

    img_counter = 0

    while img_counter==0:
        ret, frame = cam.read()
        if not ret:
            print("failed to grab frame")
            break
        cv2.imshow("test", frame)

        k = cv2.waitKey(1)
        if k%256 == 27:
            # ESC pressed
            print("Escape hit, closing...")
            break
        elif k%256 == 32:
            # SPACE pressed
            imgD = frame
            img_name = "opencv_frame_{}.png".format(img_counter)
            cv2.imwrite(img_name, frame)
            print("{} written!".format(img_name))
            img_counter += 1

    cam.release()


def preprocessing(img):
    img = cv2.resize(img, (224, 224))
    
    img = img/255
    img = img[np.newaxis, :, :, :]
    return img




i = 0
book = {
    0: ('1', 'Thumbs up'),
    1: ('2', 'W'),
    2: ('3', 'one'),
    3: ('4', 'ok'),
    4: ('5', 'V'),
}

capture_image()
gesture = cv2.imread('opencv_frame_0.png')
model = tf.keras.models.load_model(r'transferLearningModel\tl_model')
gesture = preprocessing(gesture)
cv2.imshow('rimg',gesture[0])
print(model.predict(gesture))
a = book[np.argmax(model.predict(gesture)[0])][1]

# importing the model and predicting the output using it and initialising it to a.
if a == 'Thumbs up':
    print(a)
    pyg.hotkey('win','prntscrn') #take screenshot
elif a == 'W':
    print(a)
    pyg.hotkey('volumemute')#mutes volume
    
elif a == 'one':
    print(a)
    pyg.hotkey('f10') #f10 button
    
elif a == 'ok':
    print(a)
    pyg.hotkey('win', 'l') #locks pc
elif a == 'V':
    print(a)
    pyg.hotkey('win', 'm')#minimize all

