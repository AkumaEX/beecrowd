import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < t; i++) {
    var [n, ...ages] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print('Case ${i + 1}: ${ages[n ~/ 2]}');
  }
}
