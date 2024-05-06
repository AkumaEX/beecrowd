#include <stdio.h>

int *getTable(int *table, int n) {
    for (int i = 0; i < n; i++)
        scanf("%d", &table[i]);
}

int *minesFrom(int *table, int *mines, int n) {
    for (int i = 0; i < n; i++) {
        mines[i] = table[i];
        if (i - 1 >= 0) mines[i] += table[i - 1];
        if (i + 1 < n) mines[i] += table[i + 1];
    }
}

void formattedPrint(int *mines, int n) {
    for (int i = 0; i < n; i++)
        printf("%d\n", mines[i]);
}

int main() {
    int n;
    scanf("%d", &n);
    int table[n], mines[n];
    getTable(table, n);
    minesFrom(table, mines, n);
    formattedPrint(mines, n);
    return 0;
}
