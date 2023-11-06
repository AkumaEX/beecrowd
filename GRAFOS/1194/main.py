def get_nodes(s1):
    return {data: [] for data in s1}


def add_edges(graph, to_insert, to_stop):
    stop_node = next(to_stop)
    parent = next(to_insert)
    path = [parent]
    for child in to_insert:
        graph[parent].append(child)
        path.append(child)
        parent = child
        if (parent == stop_node):
            while (stop_node in path):
                parent = stop_node
                try:
                    stop_node = next(to_stop)
                except StopIteration:
                    break
    return graph


def post_order(parent, graph):
    children = ''
    for child in graph[parent]:
        children += post_order(child, graph)
    return children + parent


c = int(input())
for _ in range(c):
    n, s1, s2 = input().split()
    graph = get_nodes(s1)
    graph = add_edges(graph, iter(s1), iter(s2))
    root = s1[0]
    print(post_order(root, graph))
