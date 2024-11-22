def min_spheres(n):
    return n - int(n**0.5)


c = int(input())
for _ in range(c):
    n = int(input())
    print(min_spheres(n))
