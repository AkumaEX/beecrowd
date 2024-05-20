#include <math.h>
#include <stdio.h>
#ifndef PI
#define PI 3.141592653589793
#endif

double h(double n, double l, double b, double B, double H) {
    if (b == B) return l / (n * PI * pow(b, 2));
    double r = cbrt(((3 * l * (B - b)) / (n * PI * H)) + pow(b, 3));
    return H * (r - b) / (B - b);
}

double main() {
    int c;
    scanf("%d", &c);
    while (c--) {
        double n, l, b, B, H;
        scanf("%lf %lf %lf %lf %lf", &n, &l, &b, &B, &H);
        printf("%.2lf\n", h(n, l, b, B, H));
    }
    return 0;
}
