
def fill_initial_values():
    matrix = [[0]*i for i in range(1, 7)]
    matrix.append(list(map(int, input().replace(' ', ' 0 ').split(' '))))
    matrix.append([0]*8)
    matrix.append(list(map(int, input().replace(' ', ' 0 ').split(' '))))
    return matrix


def solve_base_values(matrix):
    # i is the index of the four base triangles
    for i in [0, 2, 4, 6]:
        matrix[8][i+1] = (matrix[6][i] - matrix[8][i] - matrix[8][i+2]) // 2
    return matrix


def fill_all_values(matrix):
    # from line 7 to the top
    for line in range(7, -1, -1):
        for i in range(line+1):
            matrix[line][i] = matrix[line+1][i] + matrix[line+1][i+1]
    return matrix

def print_pyramid(matrix):
    for line in range(9):
        print(*matrix[line])

n = int(input())
for _ in range(n):
    # top half values of the pyramid aren't necessary
    [input() for _ in range(3)]
    print_pyramid(fill_all_values(solve_base_values(fill_initial_values())))
