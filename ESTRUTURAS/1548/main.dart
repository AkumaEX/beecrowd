import 'dart:io';

int numSamePlace() {
  int m = int.parse(stdin.readLineSync()!);
  List<int> p = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> pSorted = [...p]..sort((a, b) => b - a);
  int samePlace = 0;
  for (int i = 0; i < m; i++) {
    if (p[i] == pSorted[i]) samePlace++;
  }
  return samePlace;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    print(numSamePlace());
  }
}
