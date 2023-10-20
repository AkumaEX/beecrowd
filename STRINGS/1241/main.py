import re


def fits(b, a):
    return re.search(b + '$', a)


n = int(input())
for _ in range(n):
    a, b = input().strip().split()
    if fits(b, a):
        print('encaixa')
    else:
        print('nao encaixa')
