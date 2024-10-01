def get_items():
    return set(input().split())


def formatted_print(items):
    print(' '.join(sorted(items)))


n = int(input())
for _ in range(n):
    items = get_items()
    formatted_print(items)
