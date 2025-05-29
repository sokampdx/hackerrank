#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'arrayManipulation' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts following parameters:
#  1. INTEGER n
#  2. 2D_INTEGER_ARRAY queries
#

def arrayManipulation(n, queries):
    arrs = [0] * (n + 2)
    result = 0

    for i, query in enumerate(queries):
        left, right, value = query
        arrs[left] += value
        arrs[right + 1] -= value

    # Write your code here
    prev = 0
    current = 0
    for i in range(1, n + 1):
        current = arrs[i] + prev
        if current > result:
            result = current
        prev = current

    return result

if __name__ == '__main__':
    #fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n, m = 0, 0
    queries = []
    with open(os.environ['INPUT_PATH'], 'r') as f:
        first_multiple_input = f.readline().rstrip().split()
        n = int(first_multiple_input[0])
        m = int(first_multiple_input[1])

        for _ in range(m):
            queries.append(list(map(int, f.readline().rstrip().split())))

    result = arrayManipulation(n, queries)
    print(result)
