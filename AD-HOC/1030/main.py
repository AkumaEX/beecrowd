import sys
sys.setrecursionlimit(20000)


def survivor(n, k):
    if n == 1:
        return 1
    return ((survivor(n-1, k) + k - 1) % n) + 1


nc = int(input())
for i in range(1, nc+1):
    n, k = tuple(map(int, input().split()))
    print(f'Case {i}: {survivor(n, k)}')
