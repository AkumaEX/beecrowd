#include <stdio.h>

int main() {
    float t, v, consumption;
    scanf("%f %f", &t, &v);
    consumption = t * v / 12;
    printf("%.3f\n", consumption);
    return 0;
}
