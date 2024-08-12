def predict(d, i, x, f):
    if d % 2 == 0:
        return i - (f % 2) * x
    return i + (f % 2) * x


d, i, x, f = map(int, input().split())
print(predict(d, i, x, f))
