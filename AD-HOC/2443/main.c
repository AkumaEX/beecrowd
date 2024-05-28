#include <stdio.h>

void printQuotient(int a, int b, int c, int d) {
    int numerator = a * d + b * c;
    int denominator = b * d;
    int gcd = _gcd(numerator, denominator);
    printf("%d %d\n", numerator / gcd, denominator / gcd);
}

int _gcd(int x, int y) {
    return y == 0 ? x : _gcd(y, x % y);
}

int main() {
    int a, b, c, d;
    scanf("%d %d %d %d", &a, &b, &c, &d);
    printQuotient(a, b, c, d);
    return 0;
}
