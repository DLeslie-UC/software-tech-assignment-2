#!/usr/bin/env python3
import numpy as np

matrix = np.arange(1,10).reshape(3,3)
vector = np.array([1,0,-1])
result = matrix * vector
print(result)
