import 'dart:io';

bool isPossible(int b, int n) {
  List<int> banks = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (n-- > 0) {
    var [d, c, v] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    banks[d - 1] -= v;
    banks[c - 1] += v;
  }
  for (int reserve in banks) {
    if (reserve.isNegative) return false;
  }
  return true;
}

void main() {
  var [b, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (b > 0 || n > 0) {
    print(isPossible(b, n) ? 'S' : 'N');
    [b, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
