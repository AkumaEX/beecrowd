import 'dart:io';

int find(List<int> students, int k) {
  int student = students[k - 1];
  return (student == k) ? k : find(students, student);
}

void main() {
  while (int.parse(stdin.readLineSync()!.trim()) > 0) {
    List<int> students = stdin.readLineSync()!.trim().split(' ').map(int.parse).toList();
    int k = int.parse(stdin.readLineSync()!.trim());
    print(find(students, k));
  }
}
