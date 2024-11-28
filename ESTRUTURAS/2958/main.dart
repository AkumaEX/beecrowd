import 'dart:io';

void printSorted(List<String> issues) {
  issues.sort((a, b) {
    int diff = b[1].compareTo(a[1]);
    if (diff == 0) diff = b[0].compareTo(a[0]);
    return diff;
  });
  for (String issue in issues) print(issue);
}

void main() {
  List<String> issues = [];
  int n = int.parse(stdin.readLineSync()!.split(' ').first);
  while (n-- > 0) issues.addAll(stdin.readLineSync()!.split(' '));
  printSorted(issues);
}
