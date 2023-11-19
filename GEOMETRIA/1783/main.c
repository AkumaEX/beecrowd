#include <stdio.h>

typedef struct Point {
    double x, y;
} Point;

struct Point getCoordinates(Point s1Before, Point s1After, Point s2Before, Point s2After) {
    double x1 = (s1Before.x + s1After.x) / 2;
    double y1 = (s1Before.y + s1After.y) / 2;
    double m1 = (s1Before.y != s1After.y) ? -(s1Before.x - s1After.x) / (s1Before.y - s1After.y) : 0;

    double x2 = (s2Before.x + s2After.x) / 2;
    double y2 = (s2Before.y + s2After.y) / 2;
    double m2 = (s2Before.y != s2After.y) ? -(s2Before.x - s2After.x) / (s2Before.y - s2After.y) : 0;

    Point blackHole;
    if (m1 == 0) {
        blackHole.x = x1;
        blackHole.y = y2 + m2 * (x1 - x2);
    } else if (m2 == 0) {
        blackHole.x = x2;
        blackHole.y = y1 + m1 * (x2 - x1);
    } else {
        blackHole.x = (m1 * x1 - y1 - m2 * x2 + y2) / (m1 - m2);
        blackHole.y = y1 + m1 * (blackHole.x - x1);
    }
    return blackHole;
}

void printFormatted(int c, Point blackHole) {
    printf("Caso #%d: %.2f %.2f\n", c, blackHole.x, blackHole.y);
}

int main() {
    int t;
    scanf("%d", &t);
    for (int c = 1; c <= t; c++) {
        Point s1Before, s1After, s2Before, s2After;
        scanf("%lf %lf %lf %lf %lf %lf %lf %lf", &s1Before.x, &s1Before.y, &s2Before.x, &s2Before.y, &s1After.x, &s1After.y, &s2After.x, &s2After.y);
        Point blackHole = getCoordinates(s1Before, s1After, s2Before, s2After);
        printFormatted(c, blackHole);
    }
    return 0;
}
