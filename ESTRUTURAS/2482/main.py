def get_messages(n):
    return {input().strip(): input().strip() for _ in range(n)}


def print_formatted(m, messages):
    for _ in range(m):
        print(input().strip())
        print(messages[input().strip()])
        print()


n = int(input())
messages = get_messages(n)
m = int(input())
print_formatted(m, messages)
