#include <stdio.h>

int main() {
    double a, g, ra, rg;
    scanf("%lf %lf %lf %lf", &a, &g, &ra, &rg);
    printf("%s\n", ra / a > rg / g ? "A" : "G");
    return 0;
}
