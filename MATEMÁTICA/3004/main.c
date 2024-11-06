#include <stdbool.h>
#include <stdio.h>

bool isSmaller(int a, int b, int c, int d) {
    return a < c && b < d || a < d && b < c;
}

int main() {
    int n, a, b, c, d;
    scanf("%d", &n);
    while (n-- > 0) {
        scanf("%d %d %d %d", &a, &b, &c, &d);
        printf("%s\n", isSmaller(a, b, c, d) ? "S" : "N");
    }
    return 0;
}
