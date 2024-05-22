import 'dart:io';

String results(String text, String word) {
  List<int> indexes = RegExp('\\b$word\\b').allMatches(text).map((match) => match.start).toList();
  return indexes.isNotEmpty ? indexes.join(' ') : '-1';
}

void main() {
  int q = int.parse(stdin.readLineSync()!);
  while (q-- > 0) {
    String text = stdin.readLineSync()!.trim();
    String word = stdin.readLineSync()!.trim();
    print(results(text, word));
  }
}
