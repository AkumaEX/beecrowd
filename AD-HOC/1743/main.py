def fits(x, y):
    for i in range(5):
        if x[i] + y[i] != 1:
            return False
    return True


x = list(map(int, input().split()))
y = list(map(int, input().split()))
print('Y' if fits(x, y) else 'N')
