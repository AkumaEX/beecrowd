from_b = {
    '*.': {'..': 1, '*.': 2, '.*': 5, '**': 8},
    '**': {'..': 3, '*.': 6, '.*': 4, '**': 7},
    '.*': {'*.': 9, '**': 0}
}

to_b = {
    '1': {0: '*.', 1: '..', 2: '..'},
    '2': {0: '*.', 1: '*.', 2: '..'},
    '3': {0: '**', 1: '..', 2: '..'},
    '4': {0: '**', 1: '.*', 2: '..'},
    '5': {0: '*.', 1: '.*', 2: '..'},
    '6': {0: '**', 1: '*.', 2: '..'},
    '7': {0: '**', 1: '**', 2: '..'},
    '8': {0: '*.', 1: '**', 2: '..'},
    '9': {0: '.*', 1: '*.', 2: '..'},
    '0': {0: '.*', 1: '**', 2: '..'}
}


def translate_from_b(d):
    sentence = [input().split() for _ in range(3)]
    for cell in range(d):
        top_cell = sentence[0][cell]
        mid_cell = sentence[1][cell]
        print(from_b[top_cell][mid_cell], end='' if cell < d-1 else '\n')


def translate_to_b(d):
    sentence = input()
    for line in range(3):
        for digit in range(d):
            num = sentence[digit]
            print(to_b[num][line], end=' ' if digit < d-1 else '\n')


while d := int(input()):
    translate_from_b(d) if input() == 'B' else translate_to_b(d)
