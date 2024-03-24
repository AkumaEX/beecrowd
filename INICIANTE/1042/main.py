def formatted_print(sequence):
    for num in sequence:
        print(num)


original = list(map(int, input().split()))
formatted_print(sorted(original))
print()
formatted_print(original)
