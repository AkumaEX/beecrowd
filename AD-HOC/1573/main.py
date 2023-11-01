def get_edge_size(a, b, c):
    edge_size = (a * b * c)**(1 / 3)
    return int(edge_size)


a, b, c = tuple(map(int, input().split()))
while (a > 0 and b > 0 and c > 0):
    print(get_edge_size(a, b, c))
    a, b, c = tuple(map(int, input().split()))
