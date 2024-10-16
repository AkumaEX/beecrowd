import 'dart:io';
import 'dart:collection';

SplayTreeMap<String, int> getTrees() {
  SplayTreeMap<String, int> trees = SplayTreeMap<String, int>();
  String? tree;
  while (!(tree = stdin.readLineSync()?.trim() ?? '').isEmpty) {
    trees[tree] = trees.putIfAbsent(tree, () => 0) + 1;
  }
  return trees;
}

void formattedPrint(int c, SplayTreeMap<String, int> trees) {
  if (c > 0) print('');
  int total = trees.values.fold(0, (a, b) => a + b);
  for (String tree in trees.keys) {
    print('$tree ${(100 * trees[tree]! / total).toStringAsFixed(4)}');
  }
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  stdin.readLineSync();
  for (int c = 0; c < n; c++) {
    formattedPrint(c, getTrees());
  }
}
