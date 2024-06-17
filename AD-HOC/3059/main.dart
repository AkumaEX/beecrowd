import 'dart:io';

int totalPairs(int n, int i, int f, List<int> vector) {
  int total = 0;
  for (int p = 0; p < n - 1; p++) {
    for (int q = p + 1; q < n; q++) {
      int pair = vector[p] + vector[q];
      if (i <= pair && pair <= f) total++;
    }
  }
  return total;
}

void main() {
  var [n, i, f] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  List<int> vector = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(totalPairs(n, i, f, vector));
}
