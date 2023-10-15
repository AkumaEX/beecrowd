def squares(n, lookup):
    if not lookup.get(n):
        lookup[n] = n * n + squares(n - 1, lookup)
    return lookup[n]


lookup = {1: 1}
while n := int(input()):
    print(squares(n, lookup))
