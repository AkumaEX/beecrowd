import 'dart:io';

void main() {
  String? line;
  while ((line = stdin.readLineSync()) != null) {
    var [a, b, c] = line!.split(' ').map(int.parse).toList();
    if (a != b && b == c)
      print('A');
    else if (b != a && a == c)
      print('B');
    else if (c != a && a == b)
      print('C');
    else
      print('*');
  }
}
