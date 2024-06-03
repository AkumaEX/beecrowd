def formatted_print(positives, values):
    print(f'{positives} valores positivos')
    print(f'{values / positives:.1f}')


positives = 0
values = 0
for _ in range(6):
    if (value := float(input())) > 0:
        positives += 1
        values += value
formatted_print(positives, values)
