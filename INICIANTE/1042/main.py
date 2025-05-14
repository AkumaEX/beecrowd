def formatted_print(sequence):
    for value in sequence:
        print(value)


original = list(map(int, input().split()))
formatted_print(sorted(original))
print()
formatted_print(original)
