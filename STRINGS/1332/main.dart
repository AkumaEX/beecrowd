import 'dart:io';

int number(String word) {
  if (word.length > 3) return 3;
  if (word[0] == 'o' && word[1] == 'n' || word[0] == 'o' && word[2] == 'e' || word[1] == 'n' && word[2] == 'e') return 1;
  return 2;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    print(number(stdin.readLineSync()!.trim()));
  }
}
