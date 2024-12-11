import 'dart:io';

List<String> getMaze(int n) {
  List<String> maze = [];
  while (n-- > 0) maze.add(stdin.readLineSync()!);
  return maze;
}

int getMaxFood(int n, List<String> maze) {
  int maxFood = 0;
  int food = 0;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      String position = maze[i][i.isEven ? j : n - 1 - j];
      if (position == 'o')
        food++;
      else if (position == 'A') {
        if (food > maxFood) maxFood = food;
        food = 0;
      }
    }
  }
  return food > maxFood ? food : maxFood;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<String> maze = getMaze(n);
  print(getMaxFood(n, maze));
}
