import 'dart:io';

void formattedPrint(String dollars, String cents) {
  dollars = RegExp(r'\d{1,3}').allMatches(dollars.split('').reversed.join()).map((m) => m[0]).join(',').split('').reversed.join();
  print('\$${dollars}.${cents.padLeft(2, '0')}');
}

void main() {
  String? dollars;
  while ((dollars = stdin.readLineSync()) != null) {
    String cents = stdin.readLineSync()!;
    formattedPrint(dollars!, cents);
  }
}
