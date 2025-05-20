class Node:
    def __init__(self, info):
        self.info = info
        self.left = None
        self.right = None
        self.level = None

    def __str__(self):
        return str(self.info)

class BinarySearchTree:
    def __init__(self):
        self.root = None

    def create(self, val):
        if self.root == None:
            self.root = Node(val)
        else:
            current = self.root

            while True:
                if val < current.info:
                    if current.left:
                        current = current.left
                    else:
                        current.left = Node(val)
                        break
                elif val > current.info:
                    if current.right:
                        current = current.right
                    else:
                        current.right = Node(val)
                        break
                else:
                    break

"""
Node is defined as
self.left (the left child of the node)
self.right (the right child of the node)
self.info (the value of the node)
"""
def levelOrder(root):
    #Write your code here
    result = []
    current = root
    node_list = [root]
    i = 0
    while node_list:
        l = len(node_list)
        result.append([])

        for _ in range(l):
            node = node_list.pop(0)
            result[i].append(node.info)

            if node.left:
                node_list.append(node.left)

            if node.right:
                node_list.append(node.right)

        i += 1

    print(' '.join([str(result[x][y]) for x in range(len(result)) for y in range(len(result[x]))]))



tree = BinarySearchTree()
t = int(input())

arr = list(map(int, input().split()))

for i in range(t):
    tree.create(arr[i])

levelOrder(tree.root)
