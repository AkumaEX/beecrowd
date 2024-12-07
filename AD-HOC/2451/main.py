def get_maze(n):
    return [list(input()) for _ in range(n)]


def get_max_food(n, maze):
    max_food = 0
    food = 0
    for i in range(n):
        for j in range(n):
            position = maze[i][j if i % 2 == 0 else n - 1 - j]
            if position == 'o':
                food += 1
            elif position == 'A':
                if food > max_food:
                    max_food = food
                food = 0
    return food if food > max_food else max_food


n = int(input())
maze = get_maze(n)
print(get_max_food(n, maze))
