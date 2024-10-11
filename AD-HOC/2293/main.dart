import 'dart:io';

List<List<int>> getField(int n) {
  List<List<int>> field = [];
  while (n-- > 0) field.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  return field;
}

int getMaxWorms(int n, int m, List<List<int>> field) {
  int maxWorms = 0;
  for (int i = 0; i < n; i++) {
    int worms = 0;
    for (int j = 0; j < m; j++) worms += field[i][j];
    if (worms > maxWorms) maxWorms = worms;
  }
  for (int j = 0; j < m; j++) {
    int worms = 0;
    for (int i = 0; i < n; i++) worms += field[i][j];
    if (worms > maxWorms) maxWorms = worms;
  }
  return maxWorms;
}

void main() {
  var [n, m] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(getMaxWorms(n, m, getField(n)));
}
