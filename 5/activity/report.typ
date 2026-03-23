#set align(center)
= Week 5 Report

== Set 1
=== Task 1
In this task we learn about the arange function to make a dimensional array from 10 to 20, inclusive of the 10, disclusive of the 20. \
It also lets us find out the shape of the array, and how many dimensions it has (in this case, 1) and the data type that the array has. \
#figure(
  image("./task1/task1_1_result.png"),
  caption: [This is the result of running the code for task 1_1],
)

=== Task 2
This task introduces us to the the zeros function to initiate an array of `(height, width)` size with `d`ata`type=int` with 0's. \
It then shows us how to manipulate the row and columns of the array.
#figure(
  image("./task1/task_1_2_result.png"),
  caption: [This is the result of running the code for task 1_2],
)

=== Task 3
This task introduces us to the array func to just declare an array ourselves, as well as how to pull specific rows and columns. In doing so, it introduces us to the `n:m` syntax of selecting everything from the nth term, inclusive to the mth term, not inclusive.
#figure(
  image("./task1/task_1_3_result.png"),
  caption: [This is the result of running the code for task 1_3],
)

=== Task 4
This task introduces to the `ones` function with the ability to state the `(height, width, depth)` of the array to fill and the data type that the array should take. \
It also introduces how to specify the exact row, column and depth to manipulate its value.
#figure(
  image("./task1/task_1_4_result.png"),
  caption: [This is the result of running the code for task 1_4],
)

=== Task 5
This task introduces you to the idea that selecting the 2nd column, will select every other number in the array.
#figure(
  image("./task1/task1_5_result.png"),
  caption: [This is the result of running the code for task 1_5],
)

=== Task 6
This task introduces us to the fact that you can do math sums with 2 arrays that are both integer / float type arrays.
#figure(
  image("./task1/task1_6_result.png"),
  caption: [This is the result of running the code for task 1_6],
)

=== Task 7
This task introduces us to the `resize` function that can be used to transform n dimension arrays (such as the ones made by the `arange` function) to a different set of dimensions.
#figure(
  image("./task1/task1_7_result.png"),
  caption: [This is the result of running the code for task 1_7],
)

=== Task 8
This task introduces us to the `sqrt` function that can be used on integer arrays to get the square root of all the values in the array.
#figure(
  image("./task1/task_1_8_result.png"),
  caption: [This is the result of running the code for task 1_8],
)

=== Task 9
This task was a bit messed up and I was able to work it out based off the wording, as I hadn't read Task 10 yet (which had the `print` out for this task at the bottom of it). It seems like it's just rehashing the `:` syntax I talked about earlier.
#figure(
  image("./task1/task1_9_result.png"),
  caption: [This is the result of running the code for task 1_9],
)

=== Task 10
This task combines the `:` syntax, as well as teaching us the `newaxis` keyword, which lets us give an array a new dimension to be able to do the, in this case, multiplication properly between the 2 arrays.
#figure(
  image("./task1/task_1_10_result.png"),
  caption: [This is the result of running the code for task 1_10],
)
It also shows how all the values in the array get converted to a float as soon as one of them does.

#pagebreak()
== Set 2
This one introduces us to a new image manipulation library within Python.

=== Task 1
This task is the first introduction to the cv2 library and teaches us to load up the image we're manipulating and looking at into it, via the `imread` function. \
It also shows us the type and the array that the photo is read as.

#figure(
  image("./task2/1_results.png"),
  caption: [This is the result of running the code for task 2_1],
)

=== Task 2
This task showed us how to read the different colour outputs of the image and split them into 3 different images that we can view and manipulate. \
It also introduced us to how to show the images we're manipulating with the `imshow` function.\
I don't have an image of the results for this one, as it is hard to get an image of the 3 images together on my setup but it seems to have worked fine.

=== Task 3
This task introduces us to how to resize the image with the `resize` function and how its first argument is the image we're resizing then the shape we're resizing to as a tuple. \
Again, don't have an image for this one but it seems to have worked.

=== Task 4
This task introduces us to how to change an image to grayscale, via the `cvtColor` function and it introduces us to the `cv2.COLOR_` constants. It also shows us how to then save an image that we've manipulated.

#figure(
  image("./task2/gray_image.png", height: 30%, width: 30%),
  caption: [This is the gray scale image from this task, scaled down to make it not take up an entire page.],
)

=== Task 5
This introduces us to multiple functions. Firstly the `copy()` function to create a second version of the image so we can compare it to the original if we want to. \
Then it introduces us to the `circle()` function which takes the arguments `image, (x,y of centre), radius, (b, g, r), thickness amount)`, which adds a circle with those specs to the image.

#figure(
  image("./task2/5_results.png", height: 30%),
  caption: [This is the resulting image from this task with the height scaled down to ensure it doesn't take up the entire page.],
)

=== Task 6
This task introduces us on how to get the `(g,b,r)` value of the pixel at `(x,y)` and also how to manipulate them.
#figure(
  image("./task2/modified.png", height: 30%, width: 30%),
  caption: [This is the resulting image from this task scaled down to ensure it doesn't take up the entire page.],
)

=== Task 7
This task introduces us on how to manipulate images with numpy as well as how to invert the colours within an image. Due to images just being a numpy array, you can do subtraction based on the `image` variable and get another cv2 image result out the other end. \
It then shows us how to stack the images together using the `h`orizontal`stack()` function from numpy.

#figure(
  image("./task2/combined.png"),
  caption: [This is the resulting image from this task.],
)

=== Task 8
This tasks introduces us on how to combine a bit of what we've learnt previously, as well as teaching us the `addWeighted()` function. \
It combines the resize function we already knew with the idea that we can just get the first images height and width by looking at the shape values of it. \
The `addWeighted` function lets us add 2 images together into one with different weighting for the 2 images.
#figure(
  image("./task2/blended.png", height: 50%),
  caption: [This is the resulting image from this task, with the height scaled down.],
)

=== Task 9
This task introduces us to the `subtract()` and `add()` functions from cv2, to perform pixel for pixel addition or subtraction, which thus requires both the images to be the same height and width. \
#grid(
  columns: 2,
  rows: 1,
  grid.cell(
    colspan: 1,
    figure(
      image("./task2/added.png", height: 30%),
      caption: [This is the added image from this task.],
    ),
  ),
  grid.cell(
    colspan: 1,
    figure(
      image("./task2/subtracted.png", height: 30%),
      caption: [This is the subtracted image from this task.],
    ),
  ),
)

=== Task 10
This task introduces us to another `cv2.COLOR_` constant and shows us how to use it to get the Hue, Saturation, and Value channels individually based off that new constant. \

#grid(
  columns: 3,
  rows: 1,
  grid.cell(
    colspan: 1,
    figure(
      image("./task2/hue.png", height: 30%),
      caption: [This is the hue image from this task.],
    ),
  ),
  grid.cell(
    colspan: 1,
    figure(
      image("./task2/saturation.png", height: 30%),
      caption: [This is the saturation image from this task.],
    ),
  ),
  grid.cell(
    colspan: 1,
    figure(
      image("./task2/value.png", height: 30%),
      caption: [This is the value image from this task.],
    ),
  ),
)

= Overview
These 2 tasks were a great introduction to both numpy and cv2, to do data processing and image processing respectfully.
