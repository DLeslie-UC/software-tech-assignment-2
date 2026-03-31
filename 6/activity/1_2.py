#!/usr/bin/env python3
from keras.preprocessing.image import load_img
from keras.preprocessing.image import img_to_array
from keras.preprocessing.image import array_to_img
# load the image
img_path = './assets/cat.jpg'
img = load_img(img_path)
print(type(img))
# convert to numpy array
img_array = img_to_array(img)
print(img_array.dtype)
print(img_array.shape)
# convert back to image
img_pil = array_to_img(img_array)
print(type(img))

# NOTE:
'''
Just shows the image type again, 
then the type within the the array (after conversion) and its shape, (y height, x width, n dimensions?)
then its type again after being turned back to an image
'''
