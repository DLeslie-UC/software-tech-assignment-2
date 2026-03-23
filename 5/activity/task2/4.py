#!/usr/bin/env python3
import cv2

image = cv2.imread('../assets/cat.jpg')
gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
cv2.imwrite('gray_image.png', gray_image)
