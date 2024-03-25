#include <stdbool.h>
#include <stdio.h>

bool isTriangle(double a, double b, double c) {
    return a != b + c && b != a + c && c != a + b;
}

int main() {
    double a, b, c;
    scanf("%lf %lf %lf", &a, &b, &c);
    if (isTriangle(a, b, c))
        printf("Perimetro = %.1lf\n", a + b + c);
    else
        printf("Area = %.1lf\n", (a + b) * c / 2);
    return 0;
}
