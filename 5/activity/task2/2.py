#!/usr/bin/env python3
import cv2

image = cv2.imread("../assets/cat.jpg")
# image = cv2.resize(image, (300,400))
b,g,r = cv2.split(image)
cv2.imshow("Blue Channel", b)
cv2.imshow("Green Channel", g)
cv2.imshow("Red Channel", r)
cv2.waitKey(0)
cv2.destroyAllWindows()
