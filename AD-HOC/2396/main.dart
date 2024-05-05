import 'dart:io';

Map<int, int> timeResults(int n) {
  Map<int, int> results = {};
  for (int car = 1; car <= n; car++) {
    int time = stdin.readLineSync()!.split(' ').map(int.parse).reduce((value, element) => value + element);
    results[time] = car;
  }
  return results;
}

void printSorted(Map<int, int> results) {
  var [first, second, third] = [...results.keys.toList()..sort((a, b) => a - b)].sublist(0, 3);
  print(results[first]);
  print(results[second]);
  print(results[third]);
}

void main() {
  int n = int.parse(stdin.readLineSync()!.split(' ').first);
  printSorted(timeResults(n));
}
