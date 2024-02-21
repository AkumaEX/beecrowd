def max_containers(a, b, c, x, y, z):
    return (x // a) * (y // b) * (z // c)


a, b, c = map(int, input().split())
x, y, z = map(int, input().split())
print(max_containers(a, b, c, x, y, z))
