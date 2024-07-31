max, position = 0, 0
for i in range(1, 101):
    value = int(input())
    if value > max:
        max, position = value, i
print(max)
print(position)
