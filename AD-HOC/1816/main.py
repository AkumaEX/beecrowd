h = 1
while m := int(input()):
    cypher = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    print(f'Instancia {h}')
    for code in map(int, input().split()):
        print(cypher[code - 1], end='')
        cypher.insert(0, cypher.pop(code - 1))
    print(end='\n\n')
    h += 1
