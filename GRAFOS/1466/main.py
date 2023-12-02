def build(tree):
    input()
    root, *nodes = list(map(int, input().split()))
    tree[root] = [None, None]
    for node in nodes:
        tree[node] = [None, None]
    for node in nodes:
        _insert(node, tree, root)
    return root


def _insert(node, tree, parent):
    edge = 0 if node < parent else 1
    child = tree[parent][edge]
    if child is None:
        tree[parent][edge] = node
    else:
        _insert(node, tree, child)


def print_formatted(i, tree, root):
    print(f'Case {i+1}:')
    queue = [root]
    while True:
        node = queue.pop(0)
        queue += [child for child in tree[node] if child is not None]
        if (len(queue) > 0):
            print(node, end=' ')
        else:
            print(node)
            return print()


c = int(input())
for i in range(c):
    tree = {}
    root = build(tree)
    print_formatted(i, tree, root)
