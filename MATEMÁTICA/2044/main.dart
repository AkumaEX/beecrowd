import 'dart:io';

void main() {
  while (int.parse(stdin.readLineSync()!) > 0) {
    List<int> p = stdin.readLineSync()!.split(' ').map(int.parse).toList();
    int cumulativeDebt = 0;
    int timesToAsk = 0;
    for (int debt in p) {
      cumulativeDebt += debt;
      if (cumulativeDebt % 100 == 0) timesToAsk++;
    }
    print(timesToAsk);
  }
}
