import 'dart:io';

void main() {
  List<String> alternatives = ['A', 'B', 'C', 'D', 'E'];
  int n = int.parse(stdin.readLineSync()!);
  while (n != 0) {
    for (int i = 0; i < n; i++) {
      List<String> choice = [
        for (var (i, mean) in stdin.readLineSync()!.split(' ').indexed)
          if (int.parse(mean) <= 127) alternatives[i]
      ];
      if (choice.length == 1)
        print(choice.first);
      else
        print('*');
    }
    n = int.parse(stdin.readLineSync()!);
  }
}
