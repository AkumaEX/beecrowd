import 'dart:io';

int coastSize(int m, int n) {
  int size = 0;
  List<String> map = _getMap(m);
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      if (isCoast(map, i, j, m, n)) size++;
    }
  }
  return size;
}

List<String> _getMap(m) {
  List<String> map = [];
  for (int i = 0; i < m; i++) map.add(stdin.readLineSync()!);
  return map;
}

bool isCoast(List<String> map, int i, int j, int m, int n) {
  if (map[i][j] == '#') {
    if (i == 0 || i == m - 1 || j == 0 || j == n - 1) return true;
    if (map[i - 1][j] == '.' || map[i + 1][j] == '.' || map[i][j - 1] == '.' || map[i][j + 1] == '.') return true;
  }
  return false;
}

void main() {
  var [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(coastSize(m, n));
}
