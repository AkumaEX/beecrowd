value = float(input())
if value < 0 or value > 100:
    print('Fora de intervalo')
elif value > 75:
    print('Intervalo (75,100]')
elif value > 50:
    print('Intervalo (50,75]')
elif value > 25:
    print('Intervalo (25,50]')
else:
    print('Intervalo [0,25]')
