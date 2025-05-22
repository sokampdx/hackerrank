#!/bin/python3

import math
import os
import random
import re
import sys

# Complete the minimumSwaps function below.
def minimumSwaps(arr, n):
    swap_cnt = 0
    pos = [None] * (n + 1)
    for i in range(n):
        pos[arr[i]] = i

    for i in range(n):
        correct = i + 1
        current = arr[i]
        location = pos[correct]
        if correct != current:
            arr[i], arr[location] = correct, current
            pos[correct], pos[current] = i, location
            swap_cnt += 1

    return swap_cnt

if __name__ == '__main__':
    n = 0
    arr = []
    with open(os.environ['INPUT_PATH'], 'r') as f:
        n = int(f.readline())
        arr = list(map(int, f.readline().rstrip().split()))

    res = minimumSwaps(arr, n)

    print(res)

    #with open(os.environ['OUTPUT_PATH'], 'w') as fptr:
    #   fptr.write(str(res) + '\n')

