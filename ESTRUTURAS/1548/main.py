def num_same_place():
    m = int(input())
    p = list(map(int, input().split()))
    p_sorted = sorted(p, reverse=True)
    same_place = 0
    for i in range(m):
        same_place += p[i] == p_sorted[i]
    return same_place


n = int(input())
for _ in range(n):
    print(num_same_place())
