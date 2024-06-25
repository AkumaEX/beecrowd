def strings():
    return sorted(input().split(), key=len, reverse=True)


n = int(input())
for _ in range(n):
    print(' '.join(strings()))
