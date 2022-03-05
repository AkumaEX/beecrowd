def gcd(a, b):
    return a if (b == 0) else gcd(b, a % b)


for _ in range(int(input())):
    f1, f2 = input().split()
    print(gcd(int(f1), int(f2)))
