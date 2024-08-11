def missing(n, pieces):
    for i in range(n - 1):
        if pieces[i] != i + 1:
            return i + 1
    return n


n = int(input())
pieces = sorted(map(int, input().split()))
print(missing(n, pieces))
