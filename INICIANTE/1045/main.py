def formatted_print(a, b, c):
    if a >= b + c:
        print('NAO FORMA TRIANGULO')
    else:
        if a**2 > b**2 + c**2:
            print('TRIANGULO OBTUSANGULO')
        elif a**2 < b**2 + c**2:
            print('TRIANGULO ACUTANGULO')
        else:
            print('TRIANGULO RETANGULO')
        if a == b == c:
            print('TRIANGULO EQUILATERO')
        elif a == b or b == c or c == a:
            print('TRIANGULO ISOSCELES')


sides = map(float, input().split())
a, b, c = sorted(sides, reverse=True)
formatted_print(a, b, c)
