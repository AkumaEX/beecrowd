#include <math.h>
#include <stdio.h>

long long int nLines(long long int n) {
    return (-1 + sqrtl(1 + 8 * n)) / 2;
}

int main() {
    long long int t, n;
    scanf("%lld", &t);
    while (t--) {
        scanf("%lld", &n);
        printf("%lld\n", nLines(n));
    }
    return 0;
}
