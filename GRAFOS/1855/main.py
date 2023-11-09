def get_map(lines):
    return [list(input()) for _ in range(lines)]


def map_is_valid(x, y, map):
    position = (0, 0)
    visited = []
    direction = ''
    while True:
        if _no_problem(position, visited, x, y, map):
            if _chest_found(position, map):
                return True
            visited.append(position)
            direction = _update_direction(position, map, direction)
            position = _next_position(position, direction)
        else:
            return False


def _no_problem(position, visited, x, y, map):
    if position not in visited:
        line, column = position
        if line < y and column < x and map[line][column] in ['>', '<', 'v', '^', '.', '*']:
            return True
    return False


def _chest_found(position, map):
    line, column = position
    return map[line][column] == '*'


def _update_direction(position, map, direction):
    line, column = position
    if map[line][column] == '.':
        return direction
    directions = {'>': (0, 1), '<': (0, -1), 'v': (1, 0), '^': (-1, 0)}
    return directions[map[line][column]]


def _next_position(position, direction):
    line, column = position
    line_direction, column_direction = direction
    return line + line_direction, column + column_direction


x = int(input())
y = int(input())
map = get_map(y)
print('*') if map_is_valid(x, y, map) else print('!')
