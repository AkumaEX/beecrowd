def tautogram(sentence):
    return len(set(map(lambda word: word[0].lower(), sentence.split()))) == 1


sentence = input()
while '*' not in sentence:
    print('Y' if tautogram(sentence) else 'N')
    sentence = input()
