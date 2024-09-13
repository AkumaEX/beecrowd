import 'dart:io';

bool tautogram(String sentence) {
  return sentence.split(' ').map((String word) => word[0].toLowerCase()).toSet().length == 1;
}

void main() {
  String sentence = stdin.readLineSync()!.trim();
  while (!sentence.contains('*')) {
    print(tautogram(sentence) ? 'Y' : 'N');
    sentence = stdin.readLineSync()!.trim();
  }
}
