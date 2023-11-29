#include <stdio.h>

int main() {
    int n, x, y, area;
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        scanf("%d %d", &x, &y);
        area = x * y / 2;
        printf("%d cm2\n", area);
    }
    return 0;
}
