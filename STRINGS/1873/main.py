wins = {
    'tesoura': ['papel', 'lagarto'],
    'papel': ['pedra', 'spock'],
    'pedra': ['lagarto', 'tesoura'],
    'lagarto': ['spock', 'papel'],
    'spock': ['tesoura', 'pedra']
}

c = int(input())
for _ in range(c):
    rajesh, sheldon = input().strip().split()
    if sheldon in wins[rajesh]:
        print('rajesh')
    elif rajesh in wins[sheldon]:
        print('sheldon')
    else:
        print('empate')
