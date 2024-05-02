let animal = {
    'vertebrado': {
        'ave': {'carnivoro': 'aguia', 'onivoro': 'pomba'},
        'mamifero': {'onivoro': 'homem', 'herbivoro': 'vaca'}
    },
    'invertebrado': {
        'inseto': {'hematofago': 'pulga', 'herbivoro': 'lagarta'},
        'anelideo': {'hematofago': 'sanguessuga', 'onivoro': 'minhoca'}
    }
}

let lines = require('fs').readFileSync('/dev/stdin', 'utf-8').split('\n');
let word1 = lines.shift().trim();
let word2 = lines.shift().trim();
let word3 = lines.shift().trim();
console.log(animal[word1][word2][word3]);
