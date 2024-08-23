import 'dart:io';

List<int> getXy() {
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  if (a > b) [a, b] = [b, a];
  return [a + 1, b];
}

int sumOdds(int x, int y) {
  int total = 0;
  for (int num = x; num < y; num++) {
    if (num.isOdd) total += num;
  }
  return total;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  while (n-- > 0) {
    var [x, y] = getXy();
    print(sumOdds(x, y));
  }
}
