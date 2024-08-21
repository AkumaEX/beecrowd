import 'dart:io';

List<List<dynamic>> getStudents(int q) {
  List<List<dynamic>> students = [];
  while (q-- > 0) {
    var [s, a, c] = stdin.readLineSync()!.trim().split(' ');
    students.add([s, a, int.parse(c)]);
  }
  return students;
}

void formattedPrint(List<List<dynamic>> students) {
  students.sort((a, b) {
    if (a[2] != b[2]) return a[2] - b[2];
    if (a[1] != b[1]) return a[1].compareTo(b[1]);
    return a[0].compareTo(b[0]);
  });

  for (List<dynamic> student in students) {
    print(student.first);
  }
}

void main() {
  int q;
  while ((q = int.parse(stdin.readLineSync() ?? '0')) > 0) {
    List<List<dynamic>> students = getStudents(q);
    formattedPrint(students);
  }
}
