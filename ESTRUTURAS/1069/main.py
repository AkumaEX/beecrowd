n = int(input())
for _ in range(n):
    diamonds = 0
    potential = 0
    for object in input():
        if (object != '.'):
            if (object == '<'):
                potential += 1
            elif (object == '>' and potential > 0):
                potential -= 1
                diamonds += 1
    print(diamonds)