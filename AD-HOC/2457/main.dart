import 'dart:io';

double percentage(String char, List<String> text) {
  int count = 0;
  for (String word in text) {
    if (word.contains(char)) count++;
  }
  return 100.0 * count / text.length;
}

void main() {
  String char = stdin.readLineSync()!.trim();
  List<String> text = stdin.readLineSync()!.trim().split(' ');
  print(percentage(char, text).toStringAsFixed(1));
}
