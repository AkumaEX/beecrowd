import 'dart:io';

String language(int k) {
  Set<String> languages = {};
  while (k-- > 0) languages.add(stdin.readLineSync()!);
  return languages.length == 1 ? languages.first : 'ingles';
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    int k = int.parse(stdin.readLineSync()!);
    print(language(k));
  }
}
