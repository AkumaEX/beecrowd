#include <stdio.h>

int maximumViewpoints(int n, int x, int *a) {
    int max = 1;
    int viewpoints = 1;
    for (int i = 0; i < n - 1; i++) {
        if (a[i + 1] - a[i] > x)
            viewpoints = 1;
        else if (++viewpoints > max)
            max = viewpoints;
    }
    return max;
}

int main() {
    int n, x;
    scanf("%d %d", &n, &x);
    int a[n];
    for (int i = 0; i < n; i++) scanf("%d", &a[i]);
    printf("%d\n", maximumViewpoints(n, x, a));
    return 0;
}
