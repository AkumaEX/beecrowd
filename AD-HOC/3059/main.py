def total_pairs(n, i, f, vector):
    total = 0
    for p in range(n-1):
        for q in range(p + 1, n):
            pair = vector[p] + vector[q]
            total += i <= pair <= f
    return total


n, i, f = map(int, input().split())
vector = list(map(int, input().split()))
print(total_pairs(n, i, f, vector))
