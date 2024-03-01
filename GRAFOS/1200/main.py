from sys import stdin


class Node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None


def insert(data, node):
    if node:
        if data < node.data:
            node.left = insert(data, node.left)
        else:
            node.right = insert(data, node.right)
        return node
    return Node(data)


def print_search(data, tree):
    if _search(data, tree):
        print(f'{data} existe')
    else:
        print(f'{data} nao existe')

def _search(data, node):
    if node:
        if data in node.data:
            return True
        return _search(data, node.left) or _search(data, node.right)
    return False


def print_tree(expression, tree):
    result = []
    _expression_tree(tree, expression, result)
    print(' '.join(result))


def _expression_tree(node, expression, result):
    if node:
        if (expression == 'PREFIXA'):
            result.append(node.data)
        _expression_tree(node.left, expression, result)
        if (expression == 'INFIXA'):
            result.append(node.data)
        _expression_tree(node.right, expression, result)
        if (expression == 'POSFIXA'):
            result.append(node.data)


data = stdin.readline().split()[1]
tree = Node(data)
for line in stdin:
    if ' ' in line:
        command, data = line.strip().split()
        if command == 'I':
            insert(data, tree)
        else:
            print_search(data, tree)
    else:
        expression = line.strip()
        print_tree(expression, tree)
