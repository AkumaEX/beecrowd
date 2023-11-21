def can_keep_project(areas):
    areas.sort()
    return areas[0] * areas[3] == areas[1] * areas[2]


areas = list(map(int, input().split()))
if can_keep_project(areas):
    print('S')
else:
    print('N')
