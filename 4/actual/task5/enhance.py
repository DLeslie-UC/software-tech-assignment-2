#!/usr/bin/env python3
from PIL import Image, ImageEnhance
import time

image = Image.open('../assets/1_Limniu 2021_1_2021_06_02-13-08-37-958.PNG')

vibrance_enhancer = ImageEnhance.Color(image)
contrast_enhancer = ImageEnhance.Contrast(image)
brightness_enhancer = ImageEnhance.Brightness(image)
sharpness_enhancer = ImageEnhance.Sharpness(image)

enhanced_image = vibrance_enhancer.enhance(1.5)

image.show()
enhanced_image.show()
enhanced_image.save('enhanced_limniu.png', 'png')
