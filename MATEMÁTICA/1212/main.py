def total_carries(a, b):
    carry, carries = 0, 0
    while a > 0 or b > 0:
        carry = (carry + a % 10 + b % 10) // 10
        carries += carry
        a, b = a // 10, b // 10
    return carries


def formatted_print(carries):
    if carries:
        print(f'{carries} carry operation{'s' if carries > 1 else ''}.')
    else:
        print(f'No carry operation.')


a, b = map(int, input().split())
while a > 0 or b > 0:
    carries = total_carries(a, b)
    formatted_print(carries)
    a, b = map(int, input().split())
