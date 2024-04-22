import 'dart:io';

bool exceeded(int n, int c) {
  int weight = 0;
  while (n-- > 0) {
    var [s, e] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    weight += e - s;
    if (weight > c) return true;
  }
  return false;
}

void main() {
  var [n, c] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(exceeded(n, c) ? 'S' : 'N');
}
