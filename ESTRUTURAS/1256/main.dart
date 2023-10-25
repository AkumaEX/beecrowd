import 'dart:io';

List<List<int>> getHashTable(int m) {
  List<List<int>> hashTable = List.generate(m, (_) => []);
  List<int> keys = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (int key in keys) hashTable[key % m].add(key);
  return hashTable;
}

void printFormatted(List<List<int>> hashTable) {
  for (var (i, keys) in hashTable.indexed) {
    stdout.write('$i -> ');
    for (int key in keys) stdout.write('$key -> ');
    print('\\');
  }
}

void main(List<String> args) {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    var [m, _] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    List<List<int>> hashTable = getHashTable(m);
    printFormatted(hashTable);
    if (times < n - 1) print('');
  }
}
