import 'dart:io';

String decode(String code, int pos) {
  return code.split('').map((char) => decrypt(char, pos)).join('');
}

String decrypt(String char, int pos) {
  return String.fromCharCode(((char.codeUnitAt(0) - 65 - pos) % 26) + 65);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    String code = stdin.readLineSync()!.trim();
    int pos = int.parse(stdin.readLineSync()!);
    print(decode(code, pos));
  }
}
