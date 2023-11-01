import 'dart:io';

List<List<int>> getCells(int h) {
  List<List<int>> cells = [];
  for (int times = 0; times < h; times++) {
    cells.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  }
  return cells;
}

List<List<int>> getVacantSpaces(int h, int p, List<List<int>> cells) {
  List<List<int>> vacantSpaces = [];
  for (int column = p - 1; column >= 0; column--) {
    for (int line = h - 1; line >= 0; line--) {
      if (cells[line][column] < 1) vacantSpaces.add([line, column]);
    }
  }
  return vacantSpaces;
}

void insertNewBlocks(List<List<int>> cells, List<List<int>> vacantSpaces) {
  List<int> queue = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  for (var (i, [line, column]) in vacantSpaces.indexed) {
    if (i < queue.length) {
      cells[line][column] = queue[i];
    }
  }
}

void printFormatted(cells) {
  for (List<int> line in cells) {
    print(line.join(' '));
  }
}

void main() {
  var [h, p, f] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (h > 0 && p > 0 && f > 0) {
    List<List<int>> cells = getCells(h);
    List<List<int>> vacantSpaces = getVacantSpaces(h, p, cells);
    insertNewBlocks(cells, vacantSpaces);
    printFormatted(cells);
    [h, p, f] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
