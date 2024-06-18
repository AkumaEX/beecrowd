#include <stdio.h>
#include <stdlib.h>

int cmpfunc(const void *a, const void *b) {
    return (*(int *)a - *(int *)b);
}

int maxLethality(int n, int *a) {
    qsort(a, n, sizeof(int), cmpfunc);
    int lethality = 0;
    for (int i = 0; i < n / 2; i++)
        lethality += a[n - 1 - i] - a[i];
    return lethality;
}

int main() {
    int n;
    while (scanf("%d", &n) != EOF) {
        int a[n];
        for (int i = 0; i < n; i++) scanf("%d", &a[i]);
        printf("%d\n", maxLethality(n, a));
    }
    return 0;
}
