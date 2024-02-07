#include <stdio.h>

void sort(int *scores) {
    if (scores[0] > scores[2]) _swap(&scores[0], &scores[2]);
    if (scores[0] > scores[1]) _swap(&scores[0], &scores[1]);
    if (scores[1] > scores[2]) _swap(&scores[1], &scores[2]);
}

void _swap(int *a, int *b) {
    int backup = *a;
    *a = *b;
    *b = backup;
}

int main() {
    int scores[3];
    scanf("%d %d %d", &scores[0], &scores[1], &scores[2]);
    sort(scores);
    printf("%d\n", scores[1]);
    return 0;
}
