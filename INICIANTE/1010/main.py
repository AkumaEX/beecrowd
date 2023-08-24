import sys

total = 0
for line in sys.stdin:
    data = line.split()
    quantity, value = int(data[1]), float(data[2])
    total += quantity * value
print(f'VALOR A PAGAR: R$ {total:.2f}')
