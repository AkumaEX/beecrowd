import 'dart:io';
import 'dart:math';

double prob(int ev1, int ev2, int at, int d) {
  int i = (ev1 / d).ceil();
  int n = (ev2 / d).ceil() + i;
  double r = (6 - at) / at;
  if (at == 3) return i / n;
  return (1 - pow(r, i)) / (1 - pow(r, n));
}

void main() {
  while (true) {
    List<String> line = stdin.readLineSync()!.split(' ');
    int ev1 = int.parse(line[0]);
    int ev2 = int.parse(line[1]);
    int at = int.parse(line[2]);
    int d = int.parse(line[3]);
    if (ev1 == 0 && ev2 == 0 && at == 0 && d == 0) break;
    double p = prob(ev1, ev2, at, d) * 100;
    print(p.toStringAsFixed(1));
  }
}
