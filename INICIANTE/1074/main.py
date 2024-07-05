n = int(input())
for _ in range(n):
    x = int(input())
    if x == 0:
        print('NULL')
    else:
        print('ODD' if x % 2 else 'EVEN', end=' ')
        print('NEGATIVE' if x < 0 else 'POSITIVE')
