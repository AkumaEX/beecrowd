input()
queue = input().split()
input()
for person in input().split():
    queue.remove(person)
print(' '.join(queue))
