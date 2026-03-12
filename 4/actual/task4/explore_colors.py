#!/usr/bin/env python3
from PIL import Image

image = Image.open('../assets/2_Sphaer 2021_1_2021_06_03-11-22-54-852.PNG')

# print(image.getpixel((0,0)))
#
# red_grayscale_image = image.getchannel('R')
# blue_grayscale_image = image.getchannel('B')

# red_grayscale_image.show()
# blue_grayscale_image.show()

# image.putpixel((0,0), (255,0,255))
# image.show()

print(image.getpixel((0,0)))
for x in range(image.size[0]):
    for y in range(image.size[1]):
        print(image.getpixel((x,y))[0])
        if image.getpixel((x,y))[0] == 34:
            image.putpixel((x,y), (200,20,20))
image.show()
image.save('sphaer.png', 'png')
