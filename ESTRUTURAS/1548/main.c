#include <stdio.h>
#include <stdlib.h>

int comparator(const void* a, const void* b) {
    return (*(int*)b - *(int*)a);
}

int numSamePlace() {
    int m;
    scanf("%d", &m);
    int p[m], pSorted[m];
    for (int i = 0; i < m; i++) {
        scanf("%d", &p[i]);
        pSorted[i] = p[i];
    }
    qsort(pSorted, m, sizeof(int), comparator);
    int samePlace = 0;
    for (int i = 0; i < m; i++)
        if (p[i] == pSorted[i])
            samePlace++;
    return samePlace;
}

int main() {
    int n;
    scanf("%d", &n);
    for (int times = 0; times < n; times++)
        printf("%d\n", numSamePlace());
    return 0;
}
