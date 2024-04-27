import 'dart:io';

double percentageAboveAverage(int n, List<int> grades) {
  double average = grades.reduce((a, b) => a + b).toInt() / n;
  int aboveAverage = grades.where((grade) => grade > average).length;
  return 100 * aboveAverage/ n;
}

void main(List<String> args) {
  int c = int.parse(stdin.readLineSync()!);
  while (c-- > 0) {
    var [n, ...grades] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print('${percentageAboveAverage(n, grades).toStringAsFixed(3)}%');
  }
}
