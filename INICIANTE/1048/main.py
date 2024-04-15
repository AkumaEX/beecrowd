def readjustment_rate(salary):
    if salary > 2000:
        return 0.04
    if salary > 1200:
        return 0.07
    if salary > 800:
        return 0.10
    if salary > 400:
        return 0.12
    return 0.15


def formatted_print(new_salary, money_earned, percentage):
    print(f'Novo salario: {new_salary:.2f}')
    print(f'Reajuste ganho: {money_earned:.2f}')
    print(f'Em percentual: {percentage * 100:.0f} %')


salary = float(input())
percentage = readjustment_rate(salary)
money_earned = salary * percentage
new_salary = salary + money_earned
formatted_print(new_salary, money_earned, percentage)
