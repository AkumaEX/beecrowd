def dinner(diet, breakfast, lunch):
    for food in breakfast + lunch:
        if food in diet:
            diet = diet.replace(food, '')
        else:
            return 'CHEATER'
    return ''.join(sorted(diet))


n = int(input())
for _ in range(n):
    diet = input()
    breakfast = input()
    lunch = input()
    print(dinner(diet, breakfast, lunch))
