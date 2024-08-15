import 'dart:io';
import 'dart:math';

double getDistance(int x1, int y1, int x2, int y2) {
  return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
}

int nearest(int n, List<List<int>> balls) {
  double minDistance = getDistance(balls[0][0], balls[0][1], 1420, 2840);
  int nearestBall = 0;
  for (int ball = 1; ball < n + 1; ball++) {
    double distance = getDistance(balls[0][0], balls[0][1], balls[ball][0], balls[ball][1]);
    if (distance < minDistance) {
      minDistance = distance;
      nearestBall = ball;
    }
  }
  return nearestBall;
}

void main() {
  int c = int.parse(stdin.readLineSync()!);
  while (c-- > 0) {
    int n = int.parse(stdin.readLineSync()!);
    List<List<int>> balls = [];
    for (int i = 0; i < n + 1; i++) balls.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
    print(nearest(n, balls));
  }
}
