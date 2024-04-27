def percentage_above_average(n, grades):
    average = sum(grades) / n
    above_average = sum(map(lambda grade: grade > average, grades))
    return 100 * above_average / n


c = int(input())
for _ in range(c):
    n, *grades = map(int, input().split())
    print(f'{percentage_above_average(n, grades):.3f}%')
