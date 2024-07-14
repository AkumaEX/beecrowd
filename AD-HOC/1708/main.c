#include <math.h>
#include <stdio.h>

int main() {
    double x, y;
    scanf("%lf %lf", &x, &y);
    printf("%d\n", (int)ceil(y / (y - x)));
    return 0;
}
