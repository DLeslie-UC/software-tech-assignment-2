#!/usr/bin/env python3
import cv2

image = cv2.imread('../assets/cat.jpg')
resized_img = cv2.resize(image, (400,300))
cv2.imshow("resized_image", resized_img)
cv2.waitKey(0)
cv2.destroyAllWindows()
