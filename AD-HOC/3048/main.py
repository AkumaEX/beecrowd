from sys import stdin

max_sequence = 1
n = int(next(stdin))
v = stdin.readlines()
for i in range(n-1):
    max_sequence += v[i] != v[i+1]
print(max_sequence)
