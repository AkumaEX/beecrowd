def min_cost(r, c):
    cost = 0
    parent = list(range(r))
    edges = _get_edges(c)
    for p in sorted(edges):
        for v, w in edges[p]:
            v_rep = _find(parent, v)
            w_rep = _find(parent, w)
            if v_rep != w_rep:
                parent[v_rep] = w_rep
                cost += p
    return cost


def _get_edges(c):
    edges = {}
    for _ in range(c):
        v, w, p = map(int, input().split())
        if p not in edges:
            edges[p] = []
        edges[p].append([v-1, w-1])
    return edges


def _find(parent, i):
    if parent[i] != i:
        parent[i] = _find(parent, parent[i])
    return parent[i]


r, c = map(int, input().split())
print(min_cost(r, c))
