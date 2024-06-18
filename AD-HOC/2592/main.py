n = int(input())
while n:
    tries = 0
    while len(line := input().split()) > 1:
        tries += 1
    print(tries)
    n = int(line[0])
