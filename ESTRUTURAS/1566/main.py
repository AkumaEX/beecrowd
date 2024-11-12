def get_count():
    count = [0] * 231
    for height in map(int, input().split()):
        count[height] += 1
    return count


def formatted_print(count, n):
    for height in range(20, 231):
        if count[height]:
            n -= 1
            print(height, end=' ' if n else '')
    print()


nc = int(input())
for _ in range(nc):
    n = int(input())
    formatted_print(get_count(), n)
