import 'dart:io';

bool fits(List<int> x, List<int> y) {
  for (int i = 0; i < 5; i++) if (x[i] + y[i] != 1) return false;
  return true;
}

void main() {
  List<int> x = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> y = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(fits(x, y) ? 'Y' : 'N');
}
