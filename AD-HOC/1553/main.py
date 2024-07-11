def get_frequencies(p):
    frequencies = {}
    for question in p:
        frequencies[question] = frequencies[question] + 1 if question in frequencies else 1
    return frequencies.values()


def get_questions(frequencies, k):
    questions = 0
    for frequency in frequencies:
        questions += frequency >= k
    return questions


n, k = map(int, input().split())
while n > 0 and k > 0:
    p = map(int, input().split())
    frequencies = get_frequencies(p)
    print(get_questions(frequencies, k))
    n, k = map(int, input().split())
