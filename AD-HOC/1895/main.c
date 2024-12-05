#include <stdio.h>
#include <stdlib.h>

int main() {
    int a = 0, b = 0, n, t, l, s;
    scanf("%d %d %d", &n, &t, &l);
    for (int i = 0; i < n / 2; i++) {
        scanf("%d", &s);
        if (abs(t - s) <= l) {
            a += abs(t - s);
            t = s;
        }
        scanf("%d", &s);
        if (abs(t - s) <= l) {
            b += abs(t - s);
            t = s;
        }
    }
    printf("%d %d\n", a, b);
    return 0;
}
