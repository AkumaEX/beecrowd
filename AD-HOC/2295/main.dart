import 'dart:io';

void main() {
  var [a, g, ra, rg] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  print(ra / a > rg / g ? 'A' : 'G');
}
