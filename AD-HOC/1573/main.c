#include <math.h>
#include <stdio.h>

int getEdgeSize(int a, int b, int c) {
    double edgeSize = pow(a * b * c, 1.0 / 3);
    return (int)edgeSize;
}

int main() {
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    while (a > 0 && b > 0 && c > 0) {
        printf("%d\n", getEdgeSize(a, b, c));
        scanf("%d %d %d", &a, &b, &c);
    }
    return 0;
}
