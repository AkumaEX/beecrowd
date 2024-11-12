from sys import stdin

result = [1, 7, 9, 3]

t = int(stdin.readline())
for _ in range(t):
    n = int(stdin.readline())
    print(result[n % 4])
