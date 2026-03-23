#!/usr/bin/env python3

# def test(*, v1: float, v2: float) -> float:
# NOTE: * means have to specify v1, v2, etc. val
# Can also go anywhere in the param list
def test(v1: float, v2: float) -> float:
    return v1 + v2
print(test(1,2))
