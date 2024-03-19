import 'dart:io';

void main() {
  int t;
  while ((t = int.parse(stdin.readLineSync()!)) > 0) {
    for (int i = 0; i < t; i++) {
      var [q, a, b] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
      print('Size #${i + 1}:');
      print('Ice Cream Used: ${(q * (a + b) * 2.5).toStringAsFixed(2)} cm2');
    }
    print('');
  }
}
