import 'dart:io';

int numCorrectDuration(List<String> compasses) {
  int correctDuration = 0;
  for (String compass in compasses) {
    if (_isDurationCorrect(compass)) correctDuration++;
  }
  return correctDuration;
}

bool _isDurationCorrect(compass) {
  Map<String, double> duration = {'W': 1, 'H': 0.5, 'Q': 0.25, 'E': 0.125, 'S': 0.0625, 'T': 0.03125, 'X': 0.015625};
  double total = 0;
  for (String note in compass.split('')) total += duration[note]!;
  return total == 1.0;
}

void main() {
  List<String> compasses = [];
  while (!(compasses = stdin.readLineSync()!.split('/')).contains('*')) {
    print(numCorrectDuration(compasses));
  }
}
