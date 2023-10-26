def get_hay_points(m):
    hay_points = {}
    for _ in range(m):
        description, value = input().split()
        hay_points[description] = int(value)
    return hay_points


def get_salary(hay_points):
    salary = 0
    while ('.' not in (line := input())):
        for description in line.split():
            salary += hay_points.get(description, 0)
    return salary


m, n = tuple(map(int, input().split()))
hay_points = get_hay_points(m)
for _ in range(n):
    print(get_salary(hay_points))
