#!/usr/bin/env python3
from PIL import Image, ImageOps

image = Image.open('../assets/2_Sphaer 2021_1_2021_06_03-11-22-54-852.PNG')

image_mirror = ImageOps.mirror(image)
# image_scale = ImageOps.scale(image, 0.5)

image_inverted = ImageOps.invert(image_mirror)
# image_inverted.show()

image_border = ImageOps.expand(
        image = image_inverted,
        border=50,
        fill=(255,255,255))
# image_padded = ImageOps.pad(image, (4000,6000))
# image_crop = ImageOps.crop(image = image, border=200)
# image_border.show()
image_border.save('sphaer.png', 'png')
