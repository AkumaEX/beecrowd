def get_infos(n):
    infos = {}
    for _ in range(n):
        name = input()
        color, size = input().split()
        if color in infos:
            if size in infos[color]:
                infos[color][size].append(name)
            else:
                infos[color][size] = [name]
        else:
            infos[color] = {size: [name]}
    return infos


def formatted_print(infos):
    for color in sorted(infos.keys()):
        for size in sorted(infos[color].keys(), reverse=True):
            for name in sorted(infos[color][size]):
                print(f'{color} {size} {name}')


n = int(input())
while True:
    infos = get_infos(n)
    formatted_print(infos)
    if n := int(input()):
        print()
    else:
        break
