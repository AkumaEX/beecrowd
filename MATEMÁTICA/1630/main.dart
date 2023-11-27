import 'dart:io';

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [x, y] = line!.split(' ').map(int.parse).toList();
    print(2 * (x + y) ~/ x.gcd(y));
  }
}
