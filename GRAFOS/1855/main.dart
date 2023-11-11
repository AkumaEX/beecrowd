import 'dart:io';

List<List<String>> getMap(int y) {
  List<List<String>> map = [];
  for (int times = 0; times < y; times++) map.add(stdin.readLineSync()!.split(''));
  return map;
}

bool mapIsValid(int x, int y, List<List<String>> map) {
  (int, int) position = (0, 0);
  List<(int, int)> visited = [];
  (int, int) direction = (0, 0);
  while (true) {
    if (_noProblem(position, visited, x, y, map)) {
      if (_chestFound(position, map)) return true;
      visited.add(position);
      direction = _updateDirection(position, map, direction);
      position = _nextPosition(position, direction);
    } else {
      return false;
    }
  }
}

bool _noProblem((int, int) position, List<(int, int)> visited, int x, int y, List<List<String>> map) {
  if (!visited.contains(position)) {
    var (line, column) = position;
    if (line < y && column < x && ['>', '<', 'v', '^', '.', '*'].contains(map[line][column])) {
      return true;
    }
  }
  return false;
}

bool _chestFound((int, int) position, List<List<String>> map) {
  var (line, column) = position;
  return map[line][column] == '*';
}

(int, int) _updateDirection((int, int) position, List<List<String>> map, (int, int) direction) {
  var (line, column) = position;
  if (map[line][column] == '.') {
    return direction;
  }
  Map<String, (int, int)> directions = {'>': (0, 1), '<': (0, -1), 'v': (1, 0), '^': (-1, 0)};
  return directions[map[line][column]]!;
}

(int, int) _nextPosition((int, int) position, (int, int) direction) {
  var (line, column) = position;
  var (lineDirection, columnDirection) = direction;
  return (line + lineDirection, column + columnDirection);
}

void main() {
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  List<List<String>> map = getMap(y);
  print(mapIsValid(x, y, map) ? '*' : '!');
}
