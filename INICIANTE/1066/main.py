def formatted_print(evens, positives, negatives):
    print(f'{evens} valor(es) par(es)')
    print(f'{5 - evens} valor(es) impar(es)')
    print(f'{positives} valor(es) positivo(s)')
    print(f'{negatives} valor(es) negativo(s)')


evens = 0
positives = 0
negatives = 0
for _ in range(5):
    number = int(input())
    evens += number % 2 == 0
    positives += number > 0
    negatives += number < 0
formatted_print(evens, positives, negatives)
