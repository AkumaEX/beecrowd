count = {}
n = int(input())
for _ in range(n):
    num = int(input())
    if count.get(num):
        count[num] += 1
    else:
        count[num] = 1
for num in sorted(count.keys()):
    print(f'{num} aparece {count[num]} vez(es)')
