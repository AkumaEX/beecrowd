import 'dart:io';

bool isTheFunniest() {
  String vowels = stdin.readLineSync()!.replaceAll(RegExp(r'[^aeiou]'), '');
  return vowels == vowels.split('').reversed.join('');
}

void main() {
  print(isTheFunniest() ? 'S' : 'N');
}
