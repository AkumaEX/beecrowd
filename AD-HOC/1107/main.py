def num_lasers(a, c, x):
    lasers = a - x[0]
    for i in range(1, c):
        if x[i-1] > x[i]:
            lasers += x[i-1] - x[i]
    return lasers


a, c = map(int, input().split())
while a or c:
    x = list(map(int, input().split()))
    print(num_lasers(a, c, x))
    a, c = map(int, input().split())
