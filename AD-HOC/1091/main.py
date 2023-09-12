while (k := int(input())):
    n, m = tuple(map(int, input().split()))
    for _ in range(k):
        x, y = tuple(map(int, input().split()))
        if (x == n or y == m):
            print('divisa')
        elif (x < n):
            if (y < m):
                print('SO')
            else:
                print('NO')
        elif (y < m):
            (print('SE'))
        else:
            print('NE')
