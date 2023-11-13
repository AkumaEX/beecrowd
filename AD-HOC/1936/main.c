#include <stdio.h>

int smallestFactorialSum(int n) {
    int k = 0;
    int factorials[8] = {40320, 5040, 720, 120, 24, 6, 2, 1};
    for (int i = 0; i < 8; i++) {
        int a = factorials[i];
        while (n >= a) {
            n -= a;
            k += 1;
        }
        if (n == 0) break;
    }
    return k;
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%d\n", smallestFactorialSum(n));
    return 0;
}
