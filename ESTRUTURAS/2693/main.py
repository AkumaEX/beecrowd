from sys import stdin


def get_students(q):
    students = []
    for _ in range(q):
        a, s, c = input().split()
        students.append([a, s, int(c)])
    return students


def formatted_print(students):
    for student in sorted(students, key=lambda x: [x[2], x[1], x[0]]):
        print(student[0])


for q in map(int, stdin):
    students = get_students(q)
    formatted_print(students)
