#!/usr/bin/env python3
import numpy as np

temps = np.array([
    [[10,15,20],[25,30,35]],
    [[11,16,21],[26,31,36]]
])
print(temps[:,1,:])
print("I'm assuming there was meant to be a print function of the temps array's second dimension")
