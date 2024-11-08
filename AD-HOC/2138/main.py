from sys import stdin


def most_frequent(n):
    frequency = {}
    for digit in n:
        if digit not in frequency:
            frequency[digit] = 0
        frequency[digit] += 1
    return sorted(frequency.items(), key=lambda digit: [digit[1], digit[0]], reverse=True)[0][0]


for n in stdin:
    print(most_frequent(n))
