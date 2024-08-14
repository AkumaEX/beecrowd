#include <stdio.h>

long long gcd(long long a, long long b) {
    if (b == 0) return a;
    return gcd(b, a % b);
}

long long total(long long n, long long a, long long b) {
    return n / a + n / b - n * gcd(a, b) / (a * b);
}

int main() {
    long long n, a, b;
    scanf("%lld %lld %lld", &n, &a, &b);
    while (n) {
        printf("%lld\n", total(n, a, b));
        scanf("%lld %lld %lld", &n, &a, &b);
    }
    return 0;
}
