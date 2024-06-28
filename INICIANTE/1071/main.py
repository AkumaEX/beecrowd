def start_end(x, y):
    return (x + 1, y) if x < y else (y + 1, x)


def evens_total(start, end):
    total = 0
    for num in range(start, end):
        if (num % 2):
            total += num
    return total


x = int(input())
y = int(input())
start, end = start_end(x, y)
print(evens_total(start, end))
