#!/usr/bin/env python3
import cv2

image = cv2.imread('../assets/cat.jpg')
print(f"Original Pixel Value at (50,50): {image[50,50]}")
image[50,50] = [255,255,255]
cv2.imwrite('modified.png', image)
