def get_xy():
    a, b = map(int, input().split())
    if a > b:
        a, b = b, a
    return a + 1, b


def sum_odds(x, y):
    total = 0
    for num in range(x, y):
        if num % 2:
            total += num
    return total


n = int(input())
for _ in range(n):
    x, y = get_xy()
    print(sum_odds(x, y))
