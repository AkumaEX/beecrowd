#include <math.h>
#include <stdio.h>

double area(int l) {
    return pow(l, 2) * 2 * sqrt(3) / 5;
}

int main() {
    int l;
    while (scanf("%d", &l) != EOF)
        printf("%.2lf\n", area(l));
    return 0;
}
