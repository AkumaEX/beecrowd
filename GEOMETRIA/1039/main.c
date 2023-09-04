#include <math.h>>
#include <stdio.h>

double distance(int x1, int y1, int x2, int y2) {
    return sqrt(pow((x1 - x2), 2) + pow((y1 - y2), 2));
}

int main() {
    int r1, x1, x2, r2, y1, y2;
    while (scanf("%d %d %d %d %d %d", &r1, &x1, &y1, &r2, &x2, &y2) != EOF) {
        if (distance(x1, y1, x2, y2) + r2 > r1) {
            printf("MORTO\n");
        } else {
            printf("RICO\n");
        }
    }
    return 0;
}
