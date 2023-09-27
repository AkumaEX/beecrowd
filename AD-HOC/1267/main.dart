import 'dart:io';

List<List<int>> getAttendanceList(int d) {
  List<List<int>> attendanceList = [];
  for (int i = 0; i < d; i++) attendanceList.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  return attendanceList;
}

bool noAbsence(int n, int d, List<List<int>> attendanceList) {
  for (int alumni = 0; alumni < n; alumni++) {
    bool absence = false;
    for (int dinner = 0; dinner < d; dinner++) {
      if (attendanceList[dinner][alumni] == 0) {
        absence = true;
        break;
      }
    }
    if (!absence) return true;
  }
  return false;
}

void main() {
  var [n, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  while (n != 0 || d != 0) {
    List<List<int>> attendanceList = getAttendanceList(d);
    if (noAbsence(n, d, attendanceList))
      print('yes');
    else
      print('no');
    [n, d] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  }
}
