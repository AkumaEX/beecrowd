import 'dart:io';

void main() {
  List<int> num_leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6];
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    int total = 0;
    String num = stdin.readLineSync()!;
    for (int j = 0; j < num.length; j++) {
      int digit = int.parse(num[j]);
      total += num_leds[digit];
    }
    print('$total leds');
  }
}
