import 'dart:io';

void formattedPrint(int evens, int positives, int negatives) {
  print('$evens valor(es) par(es)');
  print('${5 - evens} valor(es) impar(es)');
  print('$positives valor(es) positivo(s)');
  print('$negatives valor(es) negativo(s)');
}

void main() {
  int evens = 0;
  int positives = 0;
  int negatives = 0;
  for (int times = 0; times < 5; times++) {
    int number = int.parse(stdin.readLineSync()!);
    if (number % 2 == 0) evens++;
    if (number > 0) positives++;
    if (number < 0) negatives++;
  }
  formattedPrint(evens, positives, negatives);
}
