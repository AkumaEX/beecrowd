def bigger_size(b, t):
    size = b + t
    if size > 160:
        return 1
    if size < 160:
        return 2
    return 0


b = int(input())
t = int(input())
print(bigger_size(b, t))
