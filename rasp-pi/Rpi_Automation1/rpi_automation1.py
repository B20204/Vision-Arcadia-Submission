import time
import tensorflow as tf
import RPi.GPIO as GPIO
import cv2
import numpy as np
from picamera import PiCamera

import lcd

lcd.lcd_init()

# from Adafruit_CharLCD import Adafruit_CharLCD

camera = PiCamera()


def capture_image(k):
    time.sleep(5)
    camera.capture('/home/pi/Desktop/Vision_Arcadia/image%s.jpg', k)


def preprocessing(img):
    img = cv2.resize(img, (224, 224))
    img = img[np.newaxis, :, :, :]
    return img


def forward():
    pass  # The Wheelchair moves forward


def backward():
    pass  # The Wheelchair moves backward


def left():
    pass  # The Wheelchair turns left


def right():
    pass  # The Wheelchair turns right


GPIO.setmode(GPIO.BCM)
# lcd = Adafruit_CharLCD(rs=24, en=23, d4=15, d5=4, d6=3, d7=2, cols=16, lines=2)
# lcd.clear()
# setting up the pins
GPIO.setup(19, GPIO.OUT)  # Bulb
GPIO.setup(20, GPIO.OUT)  # Wheelchair
GPIO.setup(21, GPIO.OUT)  # fan
GPIO.setup(26, GPIO.OUT)  # Any other appliance
# initialising the initial output of the pins (the four channel relay is optocoupler relay so in HIGH relay is
# off and in LOW it is on)
GPIO.output(19, GPIO.HIGH)
GPIO.output(21, GPIO.HIGH)
GPIO.output(26, GPIO.HIGH)
# (the single channel relay is not a optocoupler relay so in HIGH relay is on and in LOW it is off)
GPIO.output(20, GPIO.LOW)
i = 0
book = {
    0: ('1', 'Thumbs up'),
    1: ('2', 'W'),
    2: ('3', 'one'),
    3: ('4', 'ok'),
    4: ('5', 'V'),
}
while True:
    lcd.lcd_string('Show Gesture', lcd.LCD_LINE_1)
    capture_image(i)
    gesture = cv2.imread('/home/pi/Desktop/Vision_Arcadia/image%s.jpg', i)
    model = tf.keras.models.load_model('/home/pi/Desktop/Vision_Arcadia/transferLearningModel/tl_model')
    gesture = preprocessing(gesture)
    a = book[np.argmax(model.predict([gesture]))][1]
    # importing the model and predicting the output using it and initialising it to a.
    i = i + 1
    if a == 'Thumbs up':
        if GPIO.input(19):
            GPIO.output(19, GPIO.LOW)
            lcd.lcd_string("Bulb on", lcd.LCD_LINE_1)
        else:
            GPIO.output(19, GPIO.HIGH)
            lcd.lcd_string("Bulb off", lcd.LCD_LINE_1)

    elif a == 'W':
        if GPIO.input(21):
            GPIO.output(21, GPIO.LOW)
            lcd.lcd_string("Fan on", lcd.LCD_LINE_1)
        else:
            GPIO.output(21, GPIO.HIGH)
            lcd.lcd_string("Fan off", lcd.LCD_LINE_1)

    elif a == 'one':
        if GPIO.input(26):
            GPIO.output(26, GPIO.LOW)
            lcd.lcd_string("Appliance on", lcd.LCD_LINE_1)
        else:
            GPIO.output(26, GPIO.HIGH)
            lcd.lcd_string('Appliance off', lcd.LCD_LINE_1)

    elif a == 'ok':
        if GPIO.input(20) == 0:
            GPIO.output(20, GPIO.HIGH)
            lcd.lcd_string("Wheelchair on", lcd.LCD_LINE_1)
            while True:
                capture_image(i)
                gesture = cv2.imread('/home/pi/Desktop/Vision_Arcadia/image%s.jpg', i)
                gesture = preprocessing(gesture)
                a = book[np.argmax(model.predict([gesture]))][1]
                i = i + 1
                if a == 'Thumbs up':
                    forward()
                    lcd.lcd_string("Moving Forward", lcd.LCD_LINE_1)
                elif a == 'W':
                    backward()
                    lcd.lcd_string("Moving Backward", lcd.LCD_LINE_1)
                elif a == 'one':
                    left()
                    lcd.lcd_string("Turning Left", lcd.LCD_LINE_1)
                elif a == 'V':
                    right()
                    lcd.lcd_string("Turning Right", lcd.LCD_LINE_1)
                elif a == 'ok':
                    GPIO.output(20, GPIO.HIGH)
                    lcd.lcd_string("Wheelchair off", lcd.LCD_LINE_1)
                    break
    elif a == 'V':
        lcd.lcd_string('Bye Bye', lcd.LCD_LINE_1)
        break
GPIO.cleanup()
