x = int(input())
x = x + 1 - x % 2
for odd in range(x, x + 11, 2):
    print(odd)
