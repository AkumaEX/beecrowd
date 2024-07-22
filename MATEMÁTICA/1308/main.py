import math

def n_lines(n):
    return int((-1 + math.sqrt(1 + 8 * n)) / 2)

t = int(input())
for _ in range(t):
    n = int(input())
    print(n_lines(n))
