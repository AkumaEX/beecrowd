import 'dart:io';

int results(List<int> v) {
  v.sort((a, b) => b - a);
  int total = v.reduce((a, b) => a + b);
  if (v[0] >= total * 0.45 || v[0] >= total * 0.4 && v[0] - v[1] >= total * 0.1) return 1;
  return 2;
}

void main() {
  stdin.readLineSync();
  List<int> v = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(results(v));
}
