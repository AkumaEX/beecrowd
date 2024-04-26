import 'dart:io';
import 'dart:math';

double getMinDistance(List<List<int>> points) {
  List<double> distances = [];
  for (int p1 = 0; p1 < points.length - 1; p1++) {
    for (int p2 = p1 + 1; p2 < points.length; p2++) {
      double distance = 0;
      for (int p = 0; p < points.length; p++) {
        var [x1, y1] = points[p1];
        var [x2, y2] = points[p2];
        var [x, y] = points[p];
        distance += _distance(x1, y1, x2, y2, x, y);
      }
      distances.add(distance.abs());
    }
  }
  return distances.reduce(min);
}

double _distance(int x1, int y1, int x2, int y2, int x, int y) {
  return ((x2 - x1) * (y - y1) - (x - x1) * (y2 - y1)) / sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
}

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) > 0) {
    List<List<int>> points = [];
    while (n-- > 0) {
      var [x, y] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
      points.add([x, y]);
    }
    print(getMinDistance(points).toStringAsFixed(3));
  }
}
