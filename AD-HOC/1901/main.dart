import 'dart:io';

List<List<int>> getForest(int n) {
  List<List<int>> forest = [];
  while (n-- > 0) forest.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  return forest;
}

int numButterflies(int n, List<List<int>> forest) {
  Set<int> butterflies = {};
  while (n-- > 0) {
    var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    butterflies.add(forest[x - 1][y - 1]);
  }
  return butterflies.length;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(numButterflies(2 * n, getForest(n)));
}
