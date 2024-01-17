def min_distance(m, n):
    distance = 0
    parent = list(range(m))
    edges = _get_edges(n)
    for z in sorted(edges):
        for x, y in edges[z]:
            x_rep = _find(parent, x)
            y_rep = _find(parent, y)
            if x_rep != y_rep:
                parent[x_rep] = y_rep
                distance += z
    return distance


def _get_edges(n):
    edges = {}
    for _ in range(n):
        x, y, z = map(int, input().split())
        if z not in edges:
            edges[z] = []
        edges[z].append([x, y])
    return edges


def _find(parent, i):
    if parent[i] != i:
        parent[i] = _find(parent, parent[i])
    return parent[i]


m, n = map(int, input().split())
while (m and n):
    print(min_distance(m, n))
    m, n = map(int, input().split())
