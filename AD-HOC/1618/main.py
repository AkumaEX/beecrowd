def inside(ax, ay, cx, cy, rx, ry):
    return 1 if ax <= rx <= cx and ay <= ry <= cy else 0


n = int(input())
for _ in range(n):
    ax, ay, _, _, cx, cy, _, _, rx, ry = map(int, input().split())
    print(inside(ax, ay, cx, cy, rx, ry))
