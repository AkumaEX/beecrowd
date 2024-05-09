def score(n, v):
    longest = 0
    sequence = 1
    for i in range(n-1):
        if v[i] == v[i+1]:
            sequence += 1
            if sequence > longest:
                longest = sequence
        else:
            sequence = 1
    return longest


n = int(input())
v = list(map(int, input().split()))
print(score(n, v))
