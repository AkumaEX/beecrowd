def formatted_print(x, y):
    if x > 0:
        print('primeiro' if y > 0 else 'quarto')
    else:
        print('segundo' if y > 0 else 'terceiro')


x, y = map(int, input().split())
while x and y:
    formatted_print(x, y)
    x, y = map(int, input().split())
