def average():
    grade_1 = float(input())
    while grade_1 < 0 or grade_1 > 10:
        print('nota invalida')
        grade_1 = float(input())
    grade_2 = float(input())
    while grade_2 < 0 or grade_2 > 10:
        print('nota invalida')
        grade_2 = float(input())
    return (grade_1 + grade_2) / 2


print(f'media = {average():.2f}')
