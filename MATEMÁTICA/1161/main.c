#include <stdio.h>

unsigned long long factorial(int n, unsigned long long* lookup) {
    if (n < 2) return 1;
    if (lookup[n] == 0) lookup[n] = n * factorial(n - 1, lookup);
    return lookup[n];
}

int main() {
    int m, n;
    unsigned long long lookup[21] = {0};
    while (scanf("%d %d", &m, &n) != EOF) {
        printf("%llu\n", factorial(m, lookup) + factorial(n, lookup));
    }
    return 0;
}
