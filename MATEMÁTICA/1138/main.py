def count(digit, number):
    
    fullset = 1
    freq = 0

    while number > 0:
        current = number % 10
        number /= 10

        if current > digit:
            freq += fullset
        elif current == digit:
            

while True:
    a, b = [int(i) for i in input().split()]
    if a == 0 and b == 0:
        break
    
    for i in range(9):
        print(f'{count(i, b) - count(i, a-1)}', end=' ')
    print(f'{count(9, b) - count(9, a-1)}')
