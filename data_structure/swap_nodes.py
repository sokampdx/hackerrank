#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'swapNodes' function below.
#
# The function is expected to return a 2D_INTEGER_ARRAY.
# The function accepts following parameters:
#  1. 2D_INTEGER_ARRAY indexes
#  2. INTEGER_ARRAY queries
#

class Node:
    def __init__(self, value, depth):
        self.value = value
        self.left = None
        self.right = None
        self.depth = depth

def build_tree(indexes):
    root = Node(1,1)
    node_list = [root]
    i = 0
    while node_list:
        current = node_list.pop(0)
        left_index, right_index = indexes[i]
        i += 1
        if left_index != -1:
            current.left = Node(left_index, current.depth + 1)
            node_list.append(current.left)
        if right_index != -1:
            current.right = Node(right_index, current.depth + 1)
            node_list.append(current.right)
    return root

def in_order(node, result):
    if node.left:
        in_order(node.left, result)
    result.append(node.value)
    if node.right:
        in_order(node.right, result)

def in_order_nr(node):
    current = node
    node_list = []
    result = []
    while node_list or current:
        while current:
            node_list.append(current)
            current = current.left

        current = node_list.pop(-1)
        result.append(current.value)

        current = current.right

    return result

def swap_nodes(root, k):
    node_list = [root]
    while node_list:
        current = node_list.pop(0)
        if current.depth % k == 0:
            current.left, current.right = current.right, current.left
        if current.left:
            node_list.append(current.left)
        if current.right:
            node_list.append(current.right)

def swapNodes(indexes, queries):
    root = build_tree(indexes)
    results = []
    for k in queries:
        swap_nodes(root, k)
        result = in_order_nr(root)
        results.append(result)
    return results

if __name__ == '__main__':
    indexes = []
    with open(os.environ['INPUT_PATH'], 'r') as f:
        n = int(f.readline().strip())
        for _ in range(n):
            indexes.append(list(map(int, f.readline().rstrip().split())))

        queries_count = int(f.readline().strip())
        queries = []

        for _ in range(queries_count):
            queries_item = int(f.readline().strip())
            queries.append(queries_item)

    result = swapNodes(indexes, queries)

    with open(os.environ['OUTPUT_PATH'], 'w') as fptr:
        fptr.write('\n'.join([' '.join(map(str, x)) for x in result]))
        fptr.write('\n')

