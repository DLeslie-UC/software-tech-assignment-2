#!/usr/bin/env python3
import cv2
from time import sleep

image = cv2.imread('../assets/cat.jpg')
hsv_img = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
h, s, v = cv2.split(hsv_img)

cv2.imshow('Hue Channel', h)
cv2.imshow('Saturation Channel', s)
cv2.imshow('Value Channel', v)
cv2.imwrite("value.png", v)
cv2.imwrite("hue.png", h)
cv2.imwrite("saturation.png", s)

cv2.waitKey(0)
