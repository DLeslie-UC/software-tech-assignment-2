#!/usr/bin/env python3
import cv2

image = cv2.imread('../assets/cat.jpg')
image_copy = image.copy()
cv2.circle(image_copy, (100,100), 50, (0,0,255), 3) # 3 == thickness, rest are obvious based off prompt
cv2.imshow('Image With Circle', image_copy)
cv2.waitKey(0)
cv2.destroyAllWindows()
