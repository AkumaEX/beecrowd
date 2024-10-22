def results(v):
    v.sort(reverse=True)
    total = sum(v)
    if v[0] >= total * 0.45 or v[0] >= total * 0.4 and v[0] - v[1] >= total * 0.1:
        return 1
    return 2


input()
v = list(map(int, input().split()))
print(results(v))
