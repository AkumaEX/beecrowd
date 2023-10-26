import 'dart:io';

Map<String, int> getHayPoints(int m) {
  Map<String, int> hayPoints = {};
  for (int times = 0; times < m; times++) {
    var [description, value] = stdin.readLineSync()!.split(' ');
    hayPoints[description] = int.parse(value);
  }
  return hayPoints;
}

int getSalary(Map<String, int> hayPoints) {
  int salary = 0;
  String line;
  while (!(line = stdin.readLineSync()!).contains('.')) {
    for (String description in line.split(' ')) {
      salary += hayPoints[description] ?? 0;
    }
  }
  return salary;
}

void main() {
  var [m, n] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  Map<String, int> hayPoints = getHayPoints(m);
  for (int times = 0; times < n; times++) {
    print(getSalary(hayPoints));
  }
}
