import 'dart:io';
import 'dart:math';

int total(int l) {
  return pow(2, 2 * (log(l) / log(2)).floor()).toInt();
}

void main() {
  int l = int.parse(stdin.readLineSync()!);
  print(total(l));
}
