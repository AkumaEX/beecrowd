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
    print(f'{data} existe' if _search(data, tree) else f'{data} nao existe')


def _search(data, node):
    if node:
        return data == node.data or _search(data, node.left) or _search(data, node.right)
    return False


def print_tree(expression, tree):
    result = []
    _expression_tree(expression, tree, result)
    print(' '.join(result))


def _expression_tree(expression, node, result):
    if node:
        if (expression == 'PREFIXA'):
            result.append(node.data)
        _expression_tree(expression, node.left, result)
        if (expression == 'INFIXA'):
            result.append(node.data)
        _expression_tree(expression, node.right, result)
        if (expression == 'POSFIXA'):
            result.append(node.data)


data = stdin.readline().split()[1]
tree = Node(data)
for line in stdin:
    if ' ' in line:
        command, data = line.strip().split()
        insert(data, tree) if command == 'I' else print_search(data, tree)
    else:
        expression = line.strip()
        print_tree(expression, tree)
