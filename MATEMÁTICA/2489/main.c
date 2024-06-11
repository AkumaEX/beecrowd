#include <math.h>
#include <stdio.h>
#ifndef PI
#define PI 3.141592653589793
#endif

double h(double a, double d, double r) {
    double x = (90 - r) * PI / 180;
    return a - tan(x) * d;
}

int main() {
    double a, d, r;
    while (scanf("%lf %lf %lf", &a, &d, &r) != EOF)
        printf("%.4lf\n", h(a, d, r));
    return 0;
}
