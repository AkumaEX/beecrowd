#include <stdio.h>

int main() {
    int t, q;
    double a, b;
    scanf("%d", &t);
    while (t > 0) {
        for (int i = 0; i < t; i++) {
            scanf("%d %lf %lf", &q, &a, &b);
            printf("Size #%d:\n", i + 1);
            printf("Ice Cream Used: %.2f cm2\n", q * (a + b) * 2.5);
        }
        printf("\n");
        scanf("%d", &t);
    }
    return 0;
}
