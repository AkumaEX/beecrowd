import 'dart:io';

int leastSwaps(int l, List<int> carriages) {
  int swaps = 0;
  for (int i = 0; i < l - 1; i++) {
    for (int j = i + 1; j < l; j++) {
      if (carriages[i] > carriages[j]) swaps++;
    }
  }
  return swaps;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    int l = int.parse(stdin.readLineSync()!);
    List<int> carriages = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print('Optimal train swapping takes ${leastSwaps(l, carriages)} swaps.');
  }
}
