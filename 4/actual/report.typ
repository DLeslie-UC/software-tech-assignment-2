#set align(center)
= Week 4 Report
== Task1
This is the image showing a successful run of the personal_diary_app.py 
#image("working_py_file.png", height: 30%)
These files show a layout for writing a tkinter program using OOP.

== Task2
This task shows how to import external libraries and how to use the Pillow Library to rotate images and to see their format, filename and size through the 
`image.size`, `image.format`, `image.filename`
calls. It specifically shows how to rotate through the transpose and rotate functions shown below
```python
image.transpose(Image.Transpose.FLIP_LEFT_RIGHT)
image.transpose(Image.Transpose.ROTATE_90)
img_rotated = image.rotate(30)
```
It then further shows how to save an image changed via the PIL lib, via the `img_rotated.save()` function.
\
#figure(
  image("./task2/code-disp.png", format: "png", height: 20%),
  caption: [This is the resulting image from the code using one of the insect assets.],
)

== Task3
This task hones in on the ability to flip, crop and resize an image, and how you can apply multiple transformations w/in a single line using pythons OOPness. \
The arguments within the transpose function, do have to be of a method like `Image.Transpose.FLIP_LEFT_RIGHT` or similar. \
The arguments within the resize function are just a tuple, of `(width, height)`. \ 
The arguments shown within the crop function are defining a rectangle `(left, upper, right, lower)` where they're coordinates. \
The resulting output for one of the sphaer images was:
#image("./task3/sphaer.jpg", height: 30%)

== Task4
This task gets the pixel colour composition into RGB of the coordinate (0,0). It loops through the entire image and with my code. It checks if the red colour composition is 34 (an arbitary number chosen after just printing out all the outputs for all the pixels colours and seeing it as pretty common) and changes it to a more red colour composition. \
#figure(
  image("./task4/sphaer.png", height: 30%),
  caption: [This is the result of that for a sphaer image]
)

== Task5
This task shows how to enhance an image and that you need to call the `enhance()` function underneath those classes to actually enhance it. It also shows how you can enhance it via colour, contrast, sharpness and brightness. \
#figure(
  image("./task5/enhanced_sphaer.png", height: 30%),
  caption: [This is the result of that for a sphaer image with the sharpness enhancer]
)

== Task6
This task shows how to apply a filter over the image with the Pillow Library. \
For example the `gaussianblur` filter can be done via `image.filter(ImageFilter.GaussianBlur(radius = int))`and you could technically have the argument within the `filter()` be it's own variable to loop over different images. \
#figure(
  image("./task6/gaussianblur_gammar.png", height: 30%),
  caption: [This is the result of the gaussian blur filter on one of the gamma images.]
)

== Task7
This task introduces us to the ImageOps module of the Pillow Library. \
It introduces the ability to invert, scale, mirror and a various amount of other functions to be able to mess with images. \
The one that the end result of the task focuses on is adding a black border to the inverted mirrored image.
#figure(
  image("./task7/limniu.png", height: 30%),
  caption: [This is the result of the code on one of the limniu images.]
)

== Result
I learnt a vast amount about the PIL library and the different classes and functions within it to be able to change and manipulate images.
