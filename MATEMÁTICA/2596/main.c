#include <math.h>
#include <stdio.h>

int minSpheres(int n) {
    return n - (int)sqrt(n);
}

int main() {
    int c, n;
    scanf("%d", &c);
    while (c--) {
        scanf("%d", &n);
        printf("%d\n", minSpheres(n));
    }
    return 0;
}
