#include <math.h>
#include <stdio.h>

double getDistance(int x1, int y1, int x2, int y2) {
    return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
}

int nearest(int n, int balls[n + 1][2]) {
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

int main() {
    int c, n;
    scanf("%d", &c);
    while (c--) {
        scanf("%d", &n);
        int balls[n + 1][2];
        for (int i = 0; i < n + 1; i++) scanf("%d %d", &balls[i][0], &balls[i][1]);
        printf("%d\n", nearest(n, balls));
    }
    return 0;
}
