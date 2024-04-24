#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif
#include <math.h>
#include <stdio.h>

double largestSide(double f) {
    return f * sin(108 * M_PI / 180) / sin(63 * M_PI / 180);
}

int main() {
    double f;
    while (scanf("%lf", &f) != EOF) {
        printf("%.10lf\n", largestSide(f));
    }
    return 0;
}
