#include <stdio.h>

long long quantity(long long n) {
    return (n - 3) + (n - 2) * (n - 3) / 2;
}

int main() {
    long long n;
    scanf("%lld", &n);
    printf("%lld\n", quantity(n));
    return 0;
}
