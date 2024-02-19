#include <stdbool.h>
#include <stdio.h>

bool isOverflow(int p, char c, int q, int n) {
    int result = c == '+' ? p + q : p * q;
    return result > n;
}

int main() {
    int n, p, q;
    char c;
    scanf("%d %d %c %d", &n, &p, &c, &q);
    printf(isOverflow(p, c, q, n) ? "OVERFLOW\n" : "OK\n");
    return 0;
}
