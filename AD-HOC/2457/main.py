def percentage(char, text):
    count = 0
    for word in text:
        count += char in word
    return 100.0 * count / len(text)


char = input().strip()
text = input().strip().split()
print(f'{percentage(char, text):.1f}')
