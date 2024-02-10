experiment = 1
while (n := int(input())) > -1:
    print(f'Experiment {experiment}: {n // 2} full cycle(s)')
    experiment += 1
