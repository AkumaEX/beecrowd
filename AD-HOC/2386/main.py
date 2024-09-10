a, n = int(input()), int(input())
quantity = 0
for _ in range(n):
    f = int(input())
    quantity += a * f >= 40000000
print(quantity)
