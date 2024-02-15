def get_messages(n):
    messages = {}
    for _ in range(n):
        language = input().strip()
        message = input().strip()
        messages[language] = message
    return messages


def formatted_print(m, messages):
    for _ in range(m):
        name = input().strip()
        language = input().strip()
        print(name)
        print(messages[language])
        print()


n = int(input())
messages = get_messages(n)
m = int(input())
formatted_print(m, messages)
