#include <stdio.h>
#include <stdlib.h>

int compare(const void* a, const void* b) {
    return (*(int*)b - *(int*)a);
}

int results(int n, int v[n]) {
    qsort(v, n, sizeof(int), compare);
    int total = 0;
    for (int i = 0; i < n; i++) total += v[i];
    if (v[0] >= total * 0.45 || v[0] >= 0.4 && v[0] - v[1] >= total * 0.1) return 1;
    return 2;
}

int main() {
    int n;
    scanf("%d", &n);
    int v[n];
    for (int i = 0; i < n; i++) scanf("%d", &v[i]);
    printf("%d\n", results(n, v));
    return 0;
}
