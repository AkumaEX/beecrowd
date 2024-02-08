import 'dart:io';

int totalCost(int l, int d, int k, int p) {
  int distance = l * k;
  int tolls = (l ~/ d) * p;
  return distance + tolls;
}

void main() {
  var [l, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  var [k, p] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print(totalCost(l, d, k, p));
}
