#!/usr/bin/env python3
import cv2

img1 = cv2.imread('../assets/1_Gammar 2021_1_2021_06_03-13-19-23-879.PNG')
img2 = cv2.imread('../assets/2_Sphaer 2021_1_2021_06_03-11-22-54-852.PNG')

img2_resized = cv2.resize(img2, (img1.shape[1], img1.shape[0]))
blended = cv2.addWeighted(img1, 0.6, img2_resized, 0.4, 0)
cv2.imshow('Blended Image', blended)
cv2.imwrite('blended.png', blended)
cv2.waitKey(0)
cv2.destroyAllWindows()
