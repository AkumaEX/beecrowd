def min_distance(n, m):
    distance = 0
    parent = list(range(n))
    edges = _get_edges(m)
    for c in sorted(edges):
        for u, v in edges[c]:
            u_rep = _find(parent, u)
            v_rep = _find(parent, v)
            if u_rep != v_rep:
                parent[u_rep] = v_rep
                distance += c
    return distance


def _get_edges(m):
    edges = {}
    for _ in range(m):
        u, v, c = map(int, input().split())
        if c not in edges:
            edges[c] = []
        edges[c].append([u-1, v-1])
    return edges


def _find(parent, i):
    if parent[i] != i:
        parent[i] = _find(parent, parent[i])
    return parent[i]


n, m = map(int, input().split())
print(min_distance(n, m))
