#include <stdio.h>

char *moonState(int before, int after) {
    if (after < 3) return "nova";
    if (after > 96) return "cheia";
    if (after > before) return "crescente";
    return "minguante";
}

int main() {
    int before, after;
    scanf("%d %d", &before, &after);
    printf("%s\n", moonState(before, after));
    return 0;
}
