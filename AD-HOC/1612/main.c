#include <math.h>
#include <stdio.h>

int main() {
    int t;
    double n;
    scanf("%d", &t);
    while (t--) {
        scanf("%lf", &n);
        printf("%d\n", (int)ceil(n / 2));
    }
    return 0;
}
