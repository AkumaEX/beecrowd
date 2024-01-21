def mirrored_sequence(b, e):
    sequence = ''
    for i in range(b, e+1):
        sequence += str(i)
    return sequence + sequence[::-1]


c = int(input())
for _ in range(c):
    b, e = map(int, input().split())
    print(mirrored_sequence(b, e))
