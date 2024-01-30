n, k = map(int, input().split())
students = sorted([input() for _ in range(n)])
print(students[k-1])
