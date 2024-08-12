import 'dart:io';

int predict(int d, int i, int x, int f) {
  if (d.isEven) return i - (f % 2) * x;
  return i + (f % 2) * x;
}

void main() {
  var [d, i, x, f] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(predict(d, i, x, f));
}
