#include <stdio.h>

int elapsed(float c) {
    int days = 0;
    while (c > 1) {
        days++;
        c /= 2;
    }
    return days;
}

int main() {
    int n;
    float c;
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        scanf("%f", &c);
        printf("%d dias\n", elapsed(c));
    }
    return 0;
}
