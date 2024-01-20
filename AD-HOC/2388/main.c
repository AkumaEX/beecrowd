#include <stdio.h>

int main() {
    int n, t, v, distance = 0;
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        scanf("%d %d", &t, &v);
        distance += t * v;
    }
    printf("%d\n", distance);
    return 0;
}
