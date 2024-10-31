def max_of(h):
    max_value = h
    while h != 1:
        h = 3 * h + 1 if h % 2 else h // 2
        if h > max_value:
            max_value = h
    return max_value


while h := int(input()):
    print(max_of(h))
