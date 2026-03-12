#!/usr/bin/env python3

from PIL import Image


image = Image.open('../assets/2_Sphaer 2021_1_2021_06_03-11-22-54-852.PNG')
print(image.size)
print(image.filename)
print(image.format)
image.transpose(Image.Transpose.FLIP_LEFT_RIGHT)
image.transpose(Image.Transpose.ROTATE_90)
img_rotated = image.rotate(30)
# img_rotated.save('img_rotated-sphaer.jpg', 'JPEG')
img_rotated.show()
