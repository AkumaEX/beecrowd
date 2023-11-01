def get_cells(h):
    cells = []
    for _ in range(h):
        cells.append(list(map(int, input().split())))
    return cells


def get_vacant_spaces(h, p, cells):
    vacant_spaces = []
    for column in range(p-1, -1, -1):
        for line in range(h-1, -1, -1):
            if cells[line][column] < 1:
                vacant_spaces.append([line, column])
    return vacant_spaces


def insert_new_blocks(cells, vacant_spaces):
    queue = list(map(int, input().split()))
    for [line, column], block in zip(vacant_spaces, queue):
        cells[line][column] = block


def print_formatted(cells):
    for line in cells:
        print(*line)


h, p, f = tuple(map(int, input().split()))
while h > 0 and p > 0 and f > 0:
    cells = get_cells(h)
    vacant_spaces = get_vacant_spaces(h, p, cells)
    insert_new_blocks(cells, vacant_spaces)
    print_formatted(cells)
    h, p, f = tuple(map(int, input().split()))
