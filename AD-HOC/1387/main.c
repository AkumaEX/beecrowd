#include <stdio.h>

int main() {
    int l, r;
    scanf("%d %d", &l, &r);
    while (l || r) {
        printf("%d\n", l + r);
        scanf("%d %d", &l, &r);
    }
    return 0;
}
