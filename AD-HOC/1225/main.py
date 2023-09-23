from sys import stdin

for line in stdin:
    notes = list(map(int, stdin.readline().split()))
    if (sum(notes) % len(notes) > 0):
        print(-1)
    else:
        changes = 0
        average = sum(notes) // len(notes)
        for note in notes:
            if note > average:
                changes += note-average
        print(changes + 1)
