#include <stdio.h>

unsigned long long sumBetween(unsigned long long a, unsigned long long b) {
    return (a + b) * (b - a + 1) / 2;
}

int main() {
    unsigned long long a, b;
    scanf("%llu %llu", &a, &b);
    printf("%llu\n", sumBetween(a, b));
    return 0;
}
