import 'dart:io';

bool isPossible(String word1, String word2, String word3) {
  int first = -1;
  int second = -1;
  for (int index = 0; index < word3.length; index++) {
    if (word3[index].contains('_')) {
      first < 0 ? first = index : second = index;
    }
  }
  return word1[first] == word2[second] || word1[second] == word2[first];
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  while (c-- > 0) {
    String word1 = stdin.readLineSync()!;
    String word2 = stdin.readLineSync()!;
    String word3 = stdin.readLineSync()!;
    print(isPossible(word1, word2, word3) ? 'Y' : 'N');
  }
}
