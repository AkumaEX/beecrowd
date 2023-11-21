#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

int cmpfunc(const void* a, const void* b) {
    return (*(int*)a - *(int*)b);
}

bool canKeepProject(int areas[4]) {
    qsort(areas, 4, sizeof(int), cmpfunc);
    return areas[0] * areas[3] == areas[1] * areas[2];
}

int main() {
    int areas[4];
    scanf("%d %d %d %d", &areas[0], &areas[1], &areas[2], &areas[3]);
    printf(canKeepProject(areas) ? "S\n" : "N\n");
    return 0;
}
