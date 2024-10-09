import 'dart:io';

Map<String, int> getShoes(int n) {
  Map<String, int> shoes = {'F': 0, 'M': 0};
  List<String> line = stdin.readLineSync()!.trim().split(' ');
  for (int i = 0; i < line.length; i += 2) {
    int size = int.parse(line[i]);
    String genre = line[i + 1];
    if (size == n) shoes[genre] = shoes[genre]! + 1;
  }
  return shoes;
}

void formattedPrint(int c, Map<String, int> shoes) {
  if (c > 1) print('');
  print('Caso $c:');
  print('Pares Iguais: ${shoes['F']! + shoes['M']!}');
  print('F: ${shoes['F']}');
  print('M: ${shoes['M']}');
}

void main() {
  for (int n, c = 1; (n = int.parse(stdin.readLineSync() ?? '0')) > 0; c++) {
    formattedPrint(c, getShoes(n));
  }
}
