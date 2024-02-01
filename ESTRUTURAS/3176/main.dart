import 'dart:io';

void printFormatted(List<List<String>> dwarves, int n) {
  int teams = n ~/ 3;
  for (int team = 0; team < teams; team++) {
    print('Time ${team + 1}');
    for (int shift = 0; shift < 3; shift++) print(dwarves[team + teams * shift].join(' '));
    print('');
  }
}

void main() {
  List<List<String>> dwarves = [];
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) dwarves.add(stdin.readLineSync()!.split(' '));
  dwarves.sort((a, b) => a[0].compareTo(b[0]));
  dwarves.sort((a, b) => b[1].compareTo(a[1]));
  printFormatted(dwarves, n);
}
