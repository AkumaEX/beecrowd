gasoline = 0
ethanol = 0
diesel = 0
while True:
    fuel = int(input())
    if fuel == 1:
        ethanol += 1
    elif fuel == 2:
        gasoline += 1
    elif fuel == 3:
        diesel += 1
    elif fuel == 4:
        break
print('MUITO OBRIGADO')
print(f'Alcool: {ethanol}')
print(f'Gasolina: {gasoline}')
print(f'Diesel: {diesel}')
