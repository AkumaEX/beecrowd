import 'dart:io';

Map<int, String> members = {1: 'Rolien', 2: 'Naej', 3: 'Elehcim', 4: 'Odranoel'};

void main(List<String> args) {
  int n = int.parse(stdin.readLineSync()!);
  for (int days = 0; days < n; days++) {
    int k = int.parse(stdin.readLineSync()!);
    for (int feedbacks = 0; feedbacks < k; feedbacks++) {
      int feedback = int.parse(stdin.readLineSync()!);
      print(members[feedback]);
    }
  }
}
