import time

import RPi.GPIO as GPIO
import cv2
import numpy as np
import tensorflow as tf
from picamera import PiCamera

import lcd

# from Adafruit_CharLCD import Adafruit_CharLCD

camera = PiCamera()
lcd.lcd_init()


def capture_image(k):
    time.sleep(5)
    camera.capture('/home/pi/Desktop/Vision_Arcadia/sign_lang/image%s.jpg', k)


def preprocessing(img):
    img = cv2.resize(img, (28, 28))
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    img = img[np.newaxis, :, :, np.newaxis]
    return img


GPIO.setmode(GPIO.BCM)
# lcd = Adafruit_CharLCD(rs=24, en=23, d4=15, d5=4, d6=3, d7=2, cols=16, lines=2)
letter = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
          'W', 'X', 'Y', 'Z']
i = 0
while True:
    capture_image(i)
    gesture = cv2.imread('/home/pi/Desktop/Vision_Arcadia/sign_lang/image%s.jpg', i)
    model = tf.keras.models.load_model('/home/pi/Desktop/Vision_Arcadia/sign_lang/signLangModel')
    gesture = preprocessing(gesture)
    a = letter[np.argmax(model.predict([gesture]))]
    i = i + 1
    lcd.lcd_string(a, lcd.LCD_LINE_1)
    if a == '':
        break

GPIO.cleanup()
