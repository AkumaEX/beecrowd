import re


def k_factorial(n, i, k):
    if (n <= i * k):
        return 1
    return (n - i * k) * k_factorial(n, i+1, k)


pattern = re.compile(r'(\d+)(!+)')
t = int(input())
for _ in range(t):
    if (match := pattern.search(input())):
        number, exclamations = match.group(1, 2)
        n, k = int(number), len(exclamations)
        print(k_factorial(n, 0, k))
