import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    String seq = stdin.readLineSync()!;
    var (digit1, letter, digit2) = (int.parse(seq[0]), seq[1], int.parse(seq[2]));
    if (digit2 == digit1)
      print(digit2 * digit1);
    else if (letter == letter.toUpperCase())
      print(digit2 - digit1);
    else
      print(digit2 + digit1);
  }
}
