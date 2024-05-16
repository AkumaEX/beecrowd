import 'dart:io';

int sumNumbers(String string) {
  Iterable<RegExpMatch> matches = RegExp(r'\d+').allMatches(string);
  Iterable<int> numbers = matches.map((match) => int.parse(match.group(0)!));
  return numbers.reduce((acc, value) => acc + value);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    print(sumNumbers(stdin.readLineSync()!));
  }
}
