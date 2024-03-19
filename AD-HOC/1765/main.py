while t := int(input()):
    for i in range(t):
        q, a, b = map(float, input().split())
        print(f'Size #{i+1}:')
        print(f'Ice Cream Used: {q * (a + b) * 2.5:.2f} cm2')
    print()
