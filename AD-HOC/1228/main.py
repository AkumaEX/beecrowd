import sys
for n in sys.stdin:
    start = list(map(int, input().split()))
    finish = list(map(int, input().split()))
    overtakes = 0
    for position in range(int(n)):
        if finish[position] != start[position]:
            before = start.index(finish[position])
            start.insert(position, start.pop(before))
            overtakes += before - position
    print(overtakes)
