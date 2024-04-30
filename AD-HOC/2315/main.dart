import 'dart:io';

int elapsed(int fromDay, int fromMonth, int toDay, int toMonth) {
  Map<int, int> days = {1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31};
  int total = toDay - fromDay;
  for (int month = fromMonth; month < toMonth; month++) {
    total += days[month]!;
  }
  return total;
}

void main() {
  var [fromDay, fromMonth] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [toDay, toMonth] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(elapsed(fromDay, fromMonth, toDay, toMonth));
}
