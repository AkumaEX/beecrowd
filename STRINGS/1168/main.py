num_leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
n = int(input())
for _ in range(n):
    total = 0
    num = input()
    for digit in num:
        total += num_leds[int(digit)]
    print(f'{total} leds')