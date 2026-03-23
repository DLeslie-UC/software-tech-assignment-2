#!/usr/bin/env python3
import cv2

image = cv2.imread('../assets/cat.jpg')
print(f"Type of the image: {type(image)}")
print(f"Shape of the image array: {image.shape}")
