def get_move(instruction, lookup):
    if instruction == 'LEFT':
        return -1
    if instruction == 'RIGHT':
        return 1
    i = int(instruction.split()[-1]) - 1
    return lookup[i]


t = int(input())
for _ in range(t):
    p = 0
    lookup = []
    n = int(input())
    for _ in range(n):
        instruction = input()
        move = get_move(instruction, lookup)
        p += move
        lookup.append(move)
    print(p)
