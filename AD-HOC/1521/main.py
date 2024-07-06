def find(students, k):
    student = students[k-1]
    return k if student == k else find(students, student)


while int(input()):
    students = list(map(int, input().split()))
    k = int(input())
    print(find(students, k))
