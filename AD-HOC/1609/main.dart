import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  while (t-- > 0) {
    stdin.readLineSync();
    print(stdin.readLineSync()!.split(' ').toSet().length);
  }
}
