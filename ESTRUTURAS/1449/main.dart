import 'dart:io';

Map<String, String> getDictionary(int m) {
  Map<String, String> dictionary = {};
  while (m-- > 0) {
    String japanese = stdin.readLineSync()!.trim();
    String portuguese = stdin.readLineSync()!.trim();
    dictionary[japanese] = portuguese;
  }
  return dictionary;
}

void translateLines(int n, Map<String, String> dictionary) {
  while (n-- > 0) {
    List<String> words = stdin.readLineSync()!.trim().split(' ');
    words.asMap().forEach((i, japanese) {
      if (dictionary.containsKey(japanese)) {
        words[i] = dictionary[japanese]!;
      }
    });
    print(words.join(' '));
  }
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  while (t-- > 0) {
    var [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    Map<String, String> dictionary = getDictionary(m);
    translateLines(n, dictionary);
    print('');
  }
}
