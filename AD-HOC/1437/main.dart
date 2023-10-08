import 'dart:io';

void main(List<String> args) {
  List<String> directions = ['N', 'L', 'S', 'O'];
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) != 0) {
    int direction = 0;
    String commands = stdin.readLineSync()!;
    for (int i = 0; i < n; i++) commands[i] == 'D' ? direction++ : direction--;
    print(directions[direction % 4]);
  }
}
