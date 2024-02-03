import 'dart:io';

void printFormatted(int i) {
  String a = 'a' * i;
  print('Ent${a}o eh N${a}t${a}l!');
}

void main() {
  int i = int.parse(stdin.readLineSync()!);
  printFormatted(i);
}
