def get_distance(x1, y1, x2, y2):
    return ((x1 - x2)**2 + (y1 - y2)**2)**0.5


def nearest(n, balls):
    min_distance = get_distance(balls[0][0], balls[0][1], 1420, 2840)
    nearest_ball = 0
    for ball in range(1, n + 1):
        distance = get_distance(balls[0][0], balls[0][1], balls[ball][0], balls[ball][1])
        if distance < min_distance:
            min_distance = distance
            nearest_ball = ball
    return nearest_ball


c = int(input())
for _ in range(c):
    n = int(input())
    balls = [tuple(map(int, input().split())) for _ in range(n + 1)]
    print(nearest(n, balls))
