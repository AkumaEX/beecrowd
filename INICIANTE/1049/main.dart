import 'dart:io';

void main() {
  var animal = {
    'vertebrado': {
      'ave': {'carnivoro': 'aguia', 'onivoro': 'pomba'},
      'mamifero': {'onivoro': 'homem', 'herbivoro': 'vaca'}
    },
    'invertebrado': {
      'inseto': {'hematofago': 'pulga', 'herbivoro': 'lagarta'},
      'anelideo': {'hematofago': 'sanguessuga', 'onivoro': 'minhoca'}
    }
  };
  String word1 = stdin.readLineSync()!.trim();
  String word2 = stdin.readLineSync()!.trim();
  String word3 = stdin.readLineSync()!.trim();
  print(animal[word1]![word2]![word3]);
}
