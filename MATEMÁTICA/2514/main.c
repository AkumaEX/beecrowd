#include <stdio.h>

int gcd(int a, int b) {
    if (b == 0) return a;
    return gcd(b, a % b);
}

int lcm(int a, int b) {
    return a * b / gcd(a, b);
}

int nextAlignment(int m, int l1, int l2, int l3) {
    return lcm(lcm(l1, l2), l3) - m;
}

int main() {
    int m, l1, l2, l3;
    while (scanf("%d", &m) != EOF) {
        scanf("%d %d %d", &l1, &l2, &l3);
        printf("%d\n", nextAlignment(m, l1, l2, l3));
    }
    return 0;
}
