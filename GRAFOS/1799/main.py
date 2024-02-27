def build_maze():
    maze = {}
    links = int(input().split()[1])
    for _ in range(links):
        a, b = input().split()
        maze[a] = (maze.get(a) or []) + [b]
        maze[b] = (maze.get(b) or []) + [a]
    return maze


def minimum_points(maze, target, queue, visited):
    next_queue = []
    for node in queue:
        if node not in visited:
            visited.add(node)
            if target in maze[node]:
                return 1
            next_queue += maze[node]
    return 1 + minimum_points(maze, target, next_queue, visited)


maze = build_maze()
points_to_cheese = minimum_points(maze, '*', ['Entrada'], set())
points_to_exit = minimum_points(maze, 'Saida', ['*'], set())
print(points_to_cheese + points_to_exit)
