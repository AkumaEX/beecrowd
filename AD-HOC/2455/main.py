def balance(p1, c1, p2, c2):
    left = p1 * c1
    right = p2 * c2
    if left > right:
        return -1
    if right > left:
        return 1
    return 0


p1, c1, p2, c2 = map(int, input().split())
print(balance(p1, c1, p2, c2))
