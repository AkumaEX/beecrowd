import 'dart:io';
import 'dart:math';

int lis(List<int> a, List<int> b) {
  if (!a.isEmpty && b.isEmpty) return 1;
  if (a.isEmpty) return 0;
  if (a.first == b.first) return 1 + lis(b.sublist(1), a.sublist(1));
  if (a.first < b.first) return 1 + lis(b, a.sublist(1));
  return lis(a, b.sublist(1));
}

void main() {
  String? line = stdin.readLineSync();
  while (line != null) {
    Map<int, List<int>> yAx = {};
    List<int> points = [];
    int n = int.parse(line);
    for (int i = 0; i < n; i++) {
      List<int> point = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      yAx.putIfAbsent(point[1], () => []).add(point[0]);
    }
    yAx.forEach((y, x_up) {
      List<int> x_down = yAx[y - 2] ?? [];
      points.add(lis(x_up..sort(), x_down..sort()));
      points.add(lis(x_down..sort(), x_up..sort()));
    });
    print(points.reduce(max));
    line = stdin.readLineSync();
  }
}
