#include <stdio.h>

int main() {
    int t, n;
    scanf("%d", &t);
    for (int i = 0; i < t; i++) {
        scanf("%d", &n);
        int ages[n];
        for (int j = 0; j < n; j++)
            scanf("%d", &ages[j]);
        printf("Case %d: %d\n", i + 1, ages[n / 2]);
    }
    return 0;
}
