def num_plates(c, d):
    return 26**c * 10**d if c > 0 or d > 0 else 0


t = int(input())
for _ in range(t):
    c, d = map(int, input().split())
    print(num_plates(c, d))
