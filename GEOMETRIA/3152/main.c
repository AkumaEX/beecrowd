#include <stdio.h>
#include <stdlib.h>

double getArea() {
    int x1, y1, x2, y2, x3, y3, x4, y4;
    scanf("%d %d %d %d %d %d %d %d", &x1, &y1, &x2, &y2, &x3, &y3, &x4, &y4);
    return abs((x1 * y2 - y1 * x2) + (x2 * y3 - y2 * x3) + (x3 * y4 - y3 * x4) + (x4 * y1 - y4 * x1)) / 2;
}

int main() {
    double areaA = getArea();
    double areaB = getArea();
    printf("terreno %s\n", areaA > areaB ? "A" : "B");
    return 0;
}
