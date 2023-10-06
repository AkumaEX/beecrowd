import 'dart:io';

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < t; times++) {
    var [n, m] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int total = (n ~/ 3) * (m ~/ 3);
    print(total);
  }
}
