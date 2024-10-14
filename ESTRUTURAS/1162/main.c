#include <stdio.h>

int leastSwaps(int l, int carriages[l]) {
    int swaps = 0;
    for (int i = 0; i < l - 1; i++)
        for (int j = i + 1; j < l; j++)
            swaps += carriages[i] > carriages[j];
    return swaps;
}

int main() {
    int n, l;
    for (scanf("%d %d", &n, &l); n--; scanf("%d", &l)) {
        int carriages[l];
        for (int i = 0; i < l; i++) scanf("%d", &carriages[i]);
        printf("Optimal train swapping takes %d swaps.\n", leastSwaps(l, carriages));
    }
    return 0;
}
