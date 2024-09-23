import 'dart:io';
import 'dart:math';

Map<String, Map<String, int>> getPairs(int n) {
  Map<String, Map<String, int>> pairs = {};
  while (n-- > 0) {
    var [m, l] = stdin.readLineSync()!.split(' ').toList();
    if (!pairs.containsKey(m)) pairs[m] = {'E': 0, 'D': 0};
    pairs[m]![l] = pairs[m]![l]! + 1;
  }
  return pairs;
}

int getTotal(Map<String, Map<String, int>> pairs) {
  int total = 0;
  for (Map<String, int> pair in pairs.values) {
    total += min(pair['E']!, pair['D']!);
  }
  return total;
}

void main() {
  int? n;
  while ((n = int.tryParse(stdin.readLineSync() ?? '')) != null) {
    Map<String, Map<String, int>> pairs = getPairs(n!);
    print(getTotal(pairs));
  }
}
