#!/usr/bin/env python3
import cv2
import numpy as np

image = cv2.imread('../assets/cat.jpg')
inverted = 255 - image

combined = np.hstack((image, inverted))
cv2.imshow('Original and Inverted', combined)
cv2.imwrite('combined.png', combined)
cv2.waitKey(0)
