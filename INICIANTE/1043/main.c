#include <stdbool.h>
#include <stdio.h>

int main() {
    float a, b, c;
    scanf("%f %f %f", &a, &b, &c);
    bool isTriangle = a + b > c && a + c > b && b + c > a;
    if (isTriangle)
        printf("Perimetro = %.1lf\n", a + b + c);
    else
        printf("Area = %.1lf\n", (a + b) * c / 2);
    return 0;
}
