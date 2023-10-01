#include <stdio.h>

int main() {
    int n, c, v;
    scanf("%d", &n);
    while (n != 0) {
        int pairs = 0;
        for (int i = 0; i < n; i++) {
            scanf("%d %d", &c, &v);
            pairs += v / 2;
        }
        int rectangles = pairs / 2;
        printf("%d\n", rectangles);
        scanf("%d", &n);
    }
    return 0;
}
