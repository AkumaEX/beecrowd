import 'dart:io';

int winner(int s, List<int> values) {
  int closest = ([...values]..sort((a, b) => ((s - a).abs() - (s - b).abs()))).first;
  return values.indexOf(closest) + 1;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    int s = int.parse(stdin.readLineSync()!.split(' ')[1]);
    List<int> values = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    print(winner(s, values));
  }
}
