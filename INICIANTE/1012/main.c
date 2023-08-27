#include <math.h>
#include <stdio.h>

int main() {
    double A, B, C, triangle, circle, trapeze, square, rectangle;
    scanf("%lf %lf %lf", &A, &B, &C);

    triangle = A * C / 2;
    circle = 3.14159 * pow(C, 2);
    trapeze = (A + B) * C / 2;
    square = pow(B, 2);
    rectangle = A * B;

    printf("TRIANGULO: %.3lf\n", triangle);
    printf("CIRCULO: %.3lf\n", circle);
    printf("TRAPEZIO: %.3lf\n", trapeze);
    printf("QUADRADO: %.3lf\n", square);
    printf("RETANGULO: %.3lf\n", rectangle);
    return 0;
}
