def get_attendance_list(d):
    return [list(map(int, input().split())) for _ in range(d)]


def no_absence(attendance_list):
    for attendances in zip(*attendance_list):
        if 0 in attendances:
            continue
        return True
    return False


n, d = tuple(map(int, input().split()))
while (n or d):
    attendance_list = get_attendance_list(d)
    if no_absence(attendance_list):
        print('yes')
    else:
        print('no')
    n, d = tuple(map(int, input().split()))
