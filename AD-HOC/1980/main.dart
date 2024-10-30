import 'dart:io';

void main() {
  String s;
  while ((s = stdin.readLineSync()!.trim()) != '0') {
    int factorial = 1;
    for (int num = 1; num <= s.length; num++) factorial *= num;
    print(factorial);
  }
}
