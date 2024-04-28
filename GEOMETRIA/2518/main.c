#include <math.h>
#include <stdio.h>

double area(int n, int h, int c, int l) {
    double d = sqrtf(pow(h, 2) + pow(c, 2));
    return n * d * l / 10000;
}

int main() {
    int n, h, c, l;
    while(scanf("%d %d %d %d", &n, &h, &c, &l) != EOF) {
        printf("%.4lf\n", area(n, h, c, l));
    }
    return 0;
}
