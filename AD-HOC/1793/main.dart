import 'dart:io';

int getActiveTime(int n) {
  List<int> times = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int activeTime = n * 10;
  for (int i = 0; i < n - 1; i++) {
    int difference = times[i + 1] - times[i];
    if (difference < 10) {
      activeTime -= 10 - difference;
    }
  }
  return activeTime;
}

void main() {
  int n;
  while ((n = int.parse(stdin.readLineSync()!)) > 0) {
    print(getActiveTime(n));
  }
}
