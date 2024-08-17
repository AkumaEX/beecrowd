import 'dart:io';

List<dynamic> getReindeers(int n) {
  List<dynamic> reindeers = [];
  while (n-- > 0) {
    var [s, w, a, h] = stdin.readLineSync()!.split(' ');
    reindeers.add([s, int.parse(w), int.parse(a), double.parse(h)]);
  }
  return reindeers
    ..sort((a, b) {
      if (b[1] != a[1]) return b[1].compareTo(a[1]);
      if (a[2] != b[2]) return a[2].compareTo(b[2]);
      if (a[3] != b[3]) return a[3].compareTo(b[3]);
      return a[0].compareTo(b[0]);
    });
}

void formattedPrint(int scenario, int m, List<dynamic> reindeers) {
  print('CENARIO {$scenario}');
  for (int i = 0; i < m; i++) print('${i + 1} - ${reindeers[i][0]}');
}

void main() {
  int t = int.parse(stdin.readLineSync()!);
  for (int scenario = 1; scenario < t + 1; scenario++) {
    var [n, m] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    List<dynamic> reindeers = getReindeers(n);
    formattedPrint(scenario, m, reindeers);
  }
}
