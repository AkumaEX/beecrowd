def is_triangle(a, b, c):
    return a != b + c and b != a + c and c != a + b


a, b, c = map(float, input().split())
if is_triangle(a, b, c):
    print(f'Perimetro = {(a + b + c):.1f}')
else:
    print(f'Area = {((a + b) * c / 2):.1f}')
