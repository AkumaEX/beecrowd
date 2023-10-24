even, odd = [], []
n = int(input())
for _ in range(n):
    num = int(input())
    even.append(num) if num % 2 == 0 else odd.append(num)
even.sort()
odd.sort(reverse=True)
for num in even + odd:
    print(num)
