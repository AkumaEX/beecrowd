import 'dart:io';

int getWaterBill(int consumption) {
  if (consumption <= 10) return 7;
  if (consumption <= 30) return 7 + (consumption - 10);
  if (consumption <= 100) return 7 + 20 + (consumption - 30) * 2;
  return 7 + 20 + 140 + (consumption - 100) * 5;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  print(getWaterBill(n));
}
