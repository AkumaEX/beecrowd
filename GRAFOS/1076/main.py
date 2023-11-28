def moves(a):
    edges = set()
    for _ in range(a):
        edges.add(frozenset(input().split()))
    return 2 * len(edges)


t = int(input())
for _ in range(t):
    input()
    _, a = input().split()
    print(moves(int(a)))
