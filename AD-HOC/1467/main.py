import sys

for line in sys.stdin:
    a, b, c = tuple(map(int, line.split()))
    if b == c != a:
        print('A')
    elif a == c != b:
        print('B')
    elif a == b != c:
        print('C')
    else:
        print('*')
