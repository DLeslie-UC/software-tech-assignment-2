#!/usr/bin/env python3
from PIL import Image

image = Image.open('../assets/1_Limniu 2021_1_2021_06_02-13-08-37-958.PNG')

image_transpose = image.transpose(Image.Transpose.ROTATE_90)

image_rotate = image.rotate(45, expand=False, center = (0,0))

image_crop = image.crop((800,600,1600,1600))

image_resize = image.resize((1000, 600))

combined_image = image.transpose(Image.Transpose.ROTATE_90).resize((2000,1500)).rotate(10)
combined_image.show()
combined_image.save('limniu.jpg', 'jpeg')
