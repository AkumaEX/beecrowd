def get_nodes(s1):
    return {data: [] for data in s1}


def add_edges(nodes, leaves, graph):
    leaf = next(leaves)
    parent = next(nodes)
    path = [parent]
    for child in nodes:
        graph[parent].append(child)
        path.append(child)
        parent, leaf = _backtrack_if_leaf(child, leaf, path, leaves)
    return path[0]


def _backtrack_if_leaf(node, leaf, path, leaves):
    if (node == leaf):
        for leaf in leaves:
            if not leaf in path:
                break
            node = leaf
    return node, leaf


def post_order(parent, graph):
    children = ''
    for child in graph[parent]:
        children += post_order(child, graph)
    return children + parent


c = int(input())
for _ in range(c):
    n, s1, s2 = input().split()
    graph = get_nodes(s1)
    tree_root = add_edges(iter(s1), iter(s2), graph)
    print(post_order(tree_root, graph))
