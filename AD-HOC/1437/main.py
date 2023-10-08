directions = ['N', 'L', 'S', 'O']
while int(input()):
    direction = 0
    for command in input():
        if command == 'D':
            direction += 1
        else:
            direction -= 1
    print(directions[direction % 4])
