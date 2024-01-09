#include <math.h>
#include <stdio.h>

int main() {
    int t, n;
    scanf("%d", &t);
    for (int times = 0; times < t; times++) {
        scanf("%d", &n);
        int s = pow(2, n) - 1;
        printf("%d\n", s);
    }
    return 0;
}
