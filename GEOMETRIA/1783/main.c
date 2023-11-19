#include <stdio.h>

typedef struct Point {
    double x, y;
} Point;

struct Point getBlackHolePoint(Point s1Before, Point s1After, Point s2Before, Point s2After) {
    double x1 = (s1Before.x + s1After.x) / 2;
    double y1 = (s1Before.y + s1After.y) / 2;
    double m1 = (s1Before.y - s1After.y) / (s1Before.x - s1After.x);

    double x2 = (s2Before.x + s2After.x) / 2;
    double y2 = (s2Before.y + s2After.y) / 2;
    double m2 = (s2Before.y - s2After.y) / (s2Before.x - s2After.x);

    Point blackHole;
    if (m1 == 0) {
        blackHole.x = x1;
        if (m2 == 0)
            blackHole.y = y2;
        blackHole.y = y2 - (x1 - x2) / m2;
    } else {
        blackHole.x = ((y2 - y1) * m1 * m2 + ((m1 * x2) - (m2 * x1))) / (m1 - m2);
        blackHole.y = y1 - (blackHole.x - x1) / m1;
    }
    return blackHole;
}

void printFormatted(int c, Point point) {
    printf("Caso #%d: %.2f %.2f\n", c, point.x, point.y);
}

int main() {
    int t;
    scanf("%d", &t);
    for (int c = 1; c <= t; c++) {
        Point s1Before, s1After, s2Before, s2After;
        scanf("%lf %lf %lf %lf %lf %lf %lf %lf", &s1Before.x, &s1Before.y, &s2Before.x, &s2Before.y, &s1After.x, &s1After.y, &s2After.x, &s2After.y);
        Point blackHole = getBlackHolePoint(s1Before, s1After, s2Before, s2After);
        printFormatted(c, blackHole);
    }
    return 0;
}
