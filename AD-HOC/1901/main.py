def get_forest(n):
    return [list(map(int, input().split())) for _ in range(n)]


def num_butterflies(n, forest):
    butterflies = set()
    for _ in range(n):
        x, y = map(int, input().split())
        butterflies.add(forest[x-1][y-1])
    return len(butterflies)


n = int(input())
print(num_butterflies(2 * n, get_forest(n)))
