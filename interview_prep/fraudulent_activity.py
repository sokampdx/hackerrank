#!/bin/python3

import math
import os
import random
import re
import sys
import bisect

#
# Complete the 'activityNotifications' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY expenditure
#  2. INTEGER d
#

def index(arr, x):
    i = bisect.bisect_left(arr, x)
    if i != len(arr) and arr[i] == x:
        return i
    raise ValueError

def activityNotifications(expenditure, d):
    # Write your code here
    running = sorted(expenditure[0:d])
    mid = d // 2
    notifier = 0
    for i, j in zip(range(d, len(expenditure)), range(0, len(expenditure) - d)):
        prev = expenditure[j]
        curr = expenditure[i]
        if d % 2 == 1:
            med = running[mid]
        else:
            med = (running[mid - 1] + running[mid]) / 2
        if (2 * med) <= curr:
            notifier += 1
        #running.remove(prev)
        del running[index(running, prev)]
        bisect.insort(running, curr)
    return notifier


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    n = int(first_multiple_input[0])

    d = int(first_multiple_input[1])

    expenditure = list(map(int, input().rstrip().split()))

    result = activityNotifications(expenditure, d)

    fptr.write(str(result) + '\n')

    fptr.close()
