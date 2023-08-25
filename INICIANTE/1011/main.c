#include <math.h>
#include <stdio.h>

int main() {
    double R, volume;
    scanf("%lf", &R);
    volume = (4.0 / 3) * 3.14159 * pow(R, 3);
    printf("VOLUME = %.3lf\n", volume);
    return 0;
}
