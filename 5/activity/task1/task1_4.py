#!/usr/bin/env python3
import numpy as np

arr = np.ones((2,2,3), dtype=int)
arr[1,0,2] = 5
print(arr)
