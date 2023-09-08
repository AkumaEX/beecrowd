n = int(input())
for _ in range(n):
    x = int(input())
    grains = 2**x
    weight = int((grains / 12) / 1000)
    print(f'{weight} kg')
