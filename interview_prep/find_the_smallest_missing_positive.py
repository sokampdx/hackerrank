#!/bin/python3

import math
import os
import random
import re
import sys



#
# Complete the 'findSmallestMissingPositive' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY orderNumbers as parameter.
#

def findSmallestMissingPositive(orderNumbers):
    # Write your code here
    size = len(orderNumbers)

    if size == 0:
        return 1;

    for i in range(size):
        while 0 < orderNumbers[i] <= size and orderNumbers[orderNumbers[i] - 1] != orderNumbers[i]:
            correct_index = orderNumbers[i] - 1
            orderNumbers[i], orderNumbers[correct_index] = orderNumbers[correct_index], orderNumbers[i]

    for i, n in enumerate(orderNumbers):
        if n != i + 1:
            return i + 1

    return size + 1

if __name__ == '__main__':
    orderNumbers_count = int(input().strip())

    orderNumbers = []

    for _ in range(orderNumbers_count):
        orderNumbers_item = int(input().strip())
        orderNumbers.append(orderNumbers_item)

    result = findSmallestMissingPositive(orderNumbers)

    print(result)

