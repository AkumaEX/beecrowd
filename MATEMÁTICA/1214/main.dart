import 'dart:io';

double percentageAboveAverage(int n, List<int> grades) {
  double average = grades.reduce((a, b) => a + b).toInt() / n;
  int aboveAverage = grades.where((grade) => grade > average).length;
  return (aboveAverage / n) * 100;
}

void main(List<String> args) {
  int c = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < c; times++) {
    var [n, ...grades] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print('${percentageAboveAverage(n, grades).toStringAsFixed(3)}%');
  }
}
