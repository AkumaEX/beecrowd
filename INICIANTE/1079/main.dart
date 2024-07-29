import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    var [a, b, c] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    print(((a * 2 + b * 3 + c * 5) / 10).toStringAsFixed(1));
  }
}
