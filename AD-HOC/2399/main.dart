import 'dart:io';

List<int> getTable(int n) {
  List<int> table = [];
  while (n-- > 0) table.add(int.parse(stdin.readLineSync()!));
  return table;
}

List<int> minesFrom(List<int> table, int n) {
  List<int> mines = [];
  for (int i = 0; i < n; i++) {
    mines.add(table[i]);
    if (i - 1 >= 0) mines[i] += table[i - 1];
    if (i + 1 < n) mines[i] += table[i + 1];
  }
  return mines;
}

void formattedPrint(List<int> mines) {
  for (int mine in mines) print(mine);
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<int> table = getTable(n);
  List<int> mines = minesFrom(table, n);
  formattedPrint(mines);
}
