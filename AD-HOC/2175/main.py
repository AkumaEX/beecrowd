def fastest(o, b, i):
    if o < b and o < i:
        return 'Otavio'
    if b < o and b < i:
        return 'Bruno'
    if i < o and i < b:
        return 'Ian'
    return 'Empate'


o, b, i = map(float, input().split())
print(fastest(o, b, i))
