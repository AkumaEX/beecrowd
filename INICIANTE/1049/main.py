animal = {
    'vertebrado': {
        'ave': {'carnivoro': 'aguia', 'onivoro': 'pomba'},
        'mamifero': {'onivoro': 'homem', 'herbivoro': 'vaca'}
    },
    'invertebrado': {
        'inseto': {'hematofago': 'pulga', 'herbivoro': 'lagarta'},
        'anelideo': {'hematofago': 'sanguessuga', 'onivoro': 'minhoca'}
    }
}

word1 = input()
word2 = input()
word3 = input()
print(animal[word1][word2][word3])
