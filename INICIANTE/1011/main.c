#include <math.h>
#include <stdio.h>

int main() {
    double r;
    scanf("%lf", &r);
    double volume = (4.0 / 3) * 3.14159 * pow(r, 3);
    printf("VOLUME = %.3lf\n", volume);
    return 0;
}
