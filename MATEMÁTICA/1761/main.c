#include <math.h>
#include <stdio.h>

int main() {
    double a, b, c;
    while (scanf("%lf %lf %lf", &a, &b, &c) != EOF) {
        a *= 3.141592654 / 180;
        printf("%.2lf\n", (tan(a) * b + c) * 5);
    }
    return 0;
}
