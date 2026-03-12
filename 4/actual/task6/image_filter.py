#!/usr/bin/env python3

from PIL import Image, ImageFilter

image = Image.open('../assets/2_Sphaer 2021_1_2021_06_03-11-22-54-852.PNG')

# image_blur = image.filter(ImageFilter.BLUR)
# image_contour = image.filter(ImageFilter.CONTOUR)
# image_emboss = image.filter(ImageFilter.EMBOSS)
# image_edge = image.filter(ImageFilter.FIND_EDGES)

image_boxblur = image.filter(ImageFilter.BoxBlur(radius=20))
image_gaussianblur = image.filter(ImageFilter.GaussianBlur(radius=20))
image_unsharp = image.filter(ImageFilter.UnsharpMask(radius=20))

image_boxblur.save('boxblur_sphaer.png', 'png')
image_gaussianblur.save('gaussianblur_sphaer.png', 'png')
