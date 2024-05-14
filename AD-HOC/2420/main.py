def section(n, a):
    target = sum(a) // 2
    k = 0
    size = 0
    while (size < target):
        size += a[k]
        k += 1
    return k


n = int(input())
a = list(map(int, input().split()))
print(section(n, a))
