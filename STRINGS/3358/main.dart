import 'dart:io';

void main() {
  RegExp pattern = RegExp(r'[^aeiou]{3,}', caseSensitive: false);
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    String name = stdin.readLineSync()!.trim();
    if (pattern.hasMatch(name)) {
      print('$name nao eh facil');
    } else {
      print('$name eh facil');
    }
  }
}
