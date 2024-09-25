def moon_stage(before, after):
    if after < 3:
        return 'nova'
    if after > 96:
        return 'cheia'
    if after > before:
        return 'crescente'
    return 'minguante'


before, after = map(int, input().split())
print(moon_stage(before, after))
