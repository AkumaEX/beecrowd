#include <stdio.h>
#include <stdlib.h>

int compare(const void* a, const void* b) {
    return (*(int*)a - *(int*)b);
}

int missing(int n, int pieces[n - 1]) {
    qsort(pieces, n - 1, sizeof(int), compare);
    for (int i = 0; i < n - 1; i++)
        if (pieces[i] != i + 1) return i + 1;
    return n;
}

int main() {
    int n;
    scanf("%d", &n);
    int pieces[n];
    for (int i = 0; i < n - 1; i++) scanf("%d", &pieces[i]);
    printf("%d\n", missing(n, pieces));
    return 0;
}
