a, b, c = map(float, input().split())
is_triangle = a + b > c and a + c > b and b + c > a
if is_triangle:
    print(f'Perimetro = {(a + b + c):.1f}')
else:
    print(f'Area = {((a + b) * c / 2):.1f}')
