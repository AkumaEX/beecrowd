def least_swaps(l, carriages):
    swaps = 0
    for i in range(l - 1):
        for j in range(i + 1, l):
            swaps += carriages[i] > carriages[j]
    return swaps


n = int(input())
for _ in range(n):
    l = int(input())
    carriages = list(map(int, input().split()))
    print(f'Optimal train swapping takes {least_swaps(l, carriages)} swaps.')
