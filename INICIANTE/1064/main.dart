import 'dart:io';

void formattedPrint(int positives, double values) {
  print('$positives valores positivos');
  print((values / positives).toStringAsFixed(1));
}

void main() {
  int positives = 0;
  double value, values = 0;
  for (int times = 0; times < 6; times++) {
    if ((value = double.parse(stdin.readLineSync()!)) > 0) {
      positives++;
      values += value;
    }
  }
  formattedPrint(positives, values);
}
