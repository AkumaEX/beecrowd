import 'dart:io';
import 'dart:math';

Point getStarPoint() {
  var [x, y] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
  return Point(x, y);
}

Point getBlackHolePoint(Point s1Before, Point s1After, Point s2Before, Point s2After) {
  double x1 = (s1Before.x + s1After.x) / 2;
  double y1 = (s1Before.y + s1After.y) / 2;
  double m1 = (s1Before.y - s1After.y) / (s1Before.x - s1After.x);

  double x2 = (s2Before.x + s2After.x) / 2;
  double y2 = (s2Before.y + s2After.y) / 2;
  double m2 = (s2Before.y - s2After.y) / (s2Before.x - s2After.x);

  if (m1 == 0) {
    if (m2 == 0) return Point(x1, y2);
    return Point(x1, y2 - (x1 - x2) / m2);
  }

  double x = ((y2 - y1) * m1 * m2 + ((m1 * x2) - (m2 * x1))) / (m1 - m2);
  double y = y1 - (x - x1) / m1;
  return Point(x, y);
}

void printFormatted(int c, Point point) {
  print('Caso #$c: ${point.x.toStringAsFixed(2)} ${point.y.toStringAsFixed(2)}');
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int c = 1; c <= t; c++) {
    Point s1Before = getStarPoint();
    Point s2Before = getStarPoint();
    Point s1After = getStarPoint();
    Point s2After = getStarPoint();
    Point blackHole = getBlackHolePoint(s1Before, s1After, s2Before, s2After);
    printFormatted(c, blackHole);
  }
}
