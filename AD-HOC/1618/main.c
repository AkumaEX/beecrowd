#include <stdio.h>

int inside(int ax, int ay, int cx, int cy, int rx, int ry) {
    return ax <= rx && rx <= cx && ay <= ry && ry <= cy ? 1 : 0;
}

int main() {
    int n, ax, ay, cx, cy, rx, ry, ignore;
    scanf("%d", &n);
    while (n--) {
        scanf("%d %d %d %d %d %d %d %d %d %d", &ax, &ay, &ignore, &ignore, &cx, &cy, &ignore, &ignore, &rx, &ry);
        printf("%d\n", inside(ax, ay, cx, cy, rx, ry));
    }
    return 0;
}
