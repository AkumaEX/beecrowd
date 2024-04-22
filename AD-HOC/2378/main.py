def exceeded(n, c):
    weight = 0
    for _ in range(n):
        s, e = map(int, input().split())
        weight += e - s
        if weight > c:
            return True
    return False


n, c = map(int, input().split())
print('S' if exceeded(n, c) else 'N')
