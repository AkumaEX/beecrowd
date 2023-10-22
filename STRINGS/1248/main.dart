import 'dart:io';

String dinner(String diet, String breakfast, String lunch) {
  for (String food in (breakfast + lunch).split('')) {
    if (diet.contains(food))
      diet = diet.replaceFirst(food, '');
    else
      return 'CHEATER';
  }
  return (diet.split('')..sort()).join('');
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int times = 0; times < n; times++) {
    String diet = stdin.readLineSync()!;
    String breakfast = stdin.readLineSync()!;
    String lunch = stdin.readLineSync()!;
    print(dinner(diet, breakfast, lunch));
  }
}
