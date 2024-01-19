def coast_size(m, n):
    size = 0
    map = _get_map(m)
    for i in range(m):
        for j in range(n):
            if _is_coast(map, i, j, m, n):
                size += 1
    return size


def _get_map(m):
    map = []
    for _ in range(m):
        map.append(input())
    return map


def _is_coast(map, i, j, m, n):
    if map[i][j] == '#':
        if i == 0 or i == m-1 or j == 0 or j == n-1:
            return True
        if map[i-1][j] == '.' or map[i+1][j] == '.' or map[i][j-1] == '.' or map[i][j+1] == '.':
            return True
    return False


m, n = map(int, input().split())
print(coast_size(m, n))
