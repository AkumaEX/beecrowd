#include <stdio.h>

int gcd(int a, int b) {
    return b == 0 ? a : gcd(b, a % b);
}

int main() {
    int n, f1, f2;
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%d%d", &f1, &f2);
        printf("%d\n", gcd(f1, f2));
    }
    return 0;
}
