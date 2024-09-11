import 'dart:io';

void main() {
  var [quantity, friends] = [0, 0];
  while (stdin.readLineSync() != null) {
    quantity += int.parse(stdin.readLineSync()!);
    friends++;
  }
  print((quantity / friends).toStringAsFixed(1));
}
