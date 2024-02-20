#include <stdio.h>

int main() {
    int n, l, c, total = 0;
    scanf("%d", &n);
    for (int tray = 0; tray < n; tray++) {
        scanf("%d %d", &l, &c);
        total += l > c ? c : 0;
    }
    printf("%d\n", total);
    return 0;
}
