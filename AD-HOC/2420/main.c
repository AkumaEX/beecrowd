#include <stdio.h>

int section(int n, int a[n]) {
    int target = 0;
    for (int i = 0; i < n; target += a[i++]);
    target /= 2;

    int k = 0;
    for (int size = 0; size < target; size += a[k++]);
    return k;
}

int main() {
    int n;
    scanf("%d", &n);

    int a[n];
    for (int i = 0; i < n; scanf("%d", &a[i++]));

    printf("%d\n", section(n, a));
    return 0;
}
