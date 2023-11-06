def first_civilization(n):
    messages = {}
    for _ in range(n):
        civilization, received, traveled = input().split()
        messages[int(received) - int(traveled)] = civilization
    smallest_year = min(messages.keys())
    return messages[smallest_year]


while (n := int(input())) > 0:
    print(first_civilization(n))
