import 'dart:io';

bool singleExchange(int m, String sequence) {
  int differences = 0;
  for (int i = 0; i < m; i++) {
    if (sequence[i] != 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'[i]) {
      differences++;
      if (differences > 2) {
        return false;
      }
    }
  }
  return true;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    int m = int.parse(stdin.readLineSync()!);
    String sequence = stdin.readLineSync()!;
    print(singleExchange(m, sequence) ? "There are the chance." : "There aren't the chance.");
  }
}
