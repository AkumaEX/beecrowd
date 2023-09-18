import 'dart:io';
import 'dart:math';

void main() {
  var [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (a != 0 && b != 0) {
    Set<int> a_set = {...stdin.readLineSync()!.split(' ').map(int.parse)};
    Set<int> b_set = {...stdin.readLineSync()!.split(' ').map(int.parse)};
    Set<int> union_set = a_set.union(b_set);
    int difference = min(union_set.length - a_set.length, union_set.length - b_set.length);
    print(difference);
    [a, b] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
