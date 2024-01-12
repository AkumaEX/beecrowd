def can_fix(l):
    segments = [tuple(map(int, input().split())) for _ in range(l)]
    x, y = segments.pop(0)
    connected = {x, y}
    has_change = True
    while (has_change):
        has_change = False
        for _ in range(len(segments)):
            x, y = segments.pop(0)
            if x in connected or y in connected:
                connected.update((x, y))
                has_change = True
            else:
                segments.append((x, y))
    return len(segments) == 0


l = int(input().split()[1])
print('COMPLETO' if can_fix(l) else 'INCOMPLETO')
