a, b = tuple(map(int, input().split()))
while a or b:
    c = 2 * a - b
    print(c)
    a, b = tuple(map(int, input().split()))
