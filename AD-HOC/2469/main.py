def most_frequent():
    frequency = {}
    for grade in map(int, input().split()):
        if grade not in frequency:
            frequency[grade] = 0
        frequency[grade] += 1
    return sorted(frequency.items(), key=lambda grade: [grade[1], grade[0]], reverse=True)[0][0]


input()
print(most_frequent())
