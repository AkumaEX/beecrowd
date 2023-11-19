import 'dart:io';

(double, double) getCoodinates(x1Before, y1Before, x1After, y1After, x2Before, y2Before, x2After, y2After) {
  var (xm1, ym1, m1) = _getParams(x1Before, y1Before, x1After, y1After);
  var (xm2, ym2, m2) = _getParams(x2Before, y2Before, x2After, y2After);

  if (m1 == 0) return (xm1, ym2 + m2 * (xm1 - xm2));
  if (m2 == 0) return (xm2, ym1 + m1 * (xm2 - xm1));
  double x = (m1 * xm1 - ym1 - m2 * xm2 + ym2) / (m1 - m2);
  double y = ym1 + m1 * (x - xm1);
  return (x, y);
}

(double, double, double) _getParams(xBefore, yBefore, xAfter, yAfter) {
  double xm = (xBefore + xAfter) / 2;
  double ym = (yBefore + yAfter) / 2;
  double m = (yBefore != yAfter) ? -(xBefore - xAfter) / (yBefore - yAfter) : 0;
  return (xm, ym, m);
}

void printFormatted(int c, double x, double y) {
  print('Caso #$c: ${x.toStringAsFixed(2)} ${y.toStringAsFixed(2)}');
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int c = 1; c <= t; c++) {
    var [x1Before, y1Before] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    var [x2Before, y2Before] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    var [x1After, y1After] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    var [x2After, y2After] = stdin.readLineSync()!.split(' ').map(double.parse).toList();
    var (x, y) = getCoodinates(x1Before, y1Before, x1After, y1After, x2Before, y2Before, x2After, y2After);
    printFormatted(c, x, y);
  }
}
