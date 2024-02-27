import 'dart:io';

Map<String, List<String>> buildMaze() {
  Map<String, List<String>> maze = {};
  int links = int.parse(stdin.readLineSync()!.split(' ')[1]);
  for (int link = 0; link < links; link++) {
    var [a, b] = stdin.readLineSync()!.split(' ').toList();
    (maze[a] ??= []).add(b);
    (maze[b] ??= []).add(a);
  }
  return maze;
}

int minimumPoints(Map<String, List<String>> maze, String target, List<String> queue, Set visited) {
  List<String> nextQueue = [];
  for (String node in queue) {
    if (!visited.contains(node)) {
      visited.add(node);
      if (maze[node]!.contains(target)) return 1;
      nextQueue.addAll(maze[node]!);
    }
  }
  return 1 + minimumPoints(maze, target, nextQueue, visited);
}

void main() {
  Map<String, List<String>> maze = buildMaze();
  int pointsToCheese = minimumPoints(maze, '*', ['Entrada'], Set());
  int pointsToExit = minimumPoints(maze, 'Saida', ['*'], Set());
  print(pointsToCheese + pointsToExit);
}
