#include <stdbool.h>
#include <stdio.h>

bool fits(int n, int a, int l, int p) {
    return n <= a && n <= l && n <= p;
}

int main() {
    int n, a, l, p;
    scanf("%d %d %d %d %d", &n, &a, &l, &p);
    printf("%s\n", fits(n, a, l, p) ? "S" : "N");
    return 0;
}
