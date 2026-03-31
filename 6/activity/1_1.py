#!/usr/bin/env python3
import matplotlib.pyplot as plt
# example of loading an image with the Keras API
from keras.preprocessing.image import load_img
# load the image
img_path = './assets/cat.jpg'
img = load_img(img_path)
# report details about the image
print(type(img))
print(img.format)
print(img.mode)
print(img.size)
# show the image using matplotlib
plt.imshow(img)
plt.axis('off') # Turn off axis labels
plt.show()

# NOTE:
'''
Shows the type as PIL Jpeg Image
Shows the format as JPEG
and shows the mode as RGB
    - Means grayscale would be shown differently
then just its x width and its y height
'''
