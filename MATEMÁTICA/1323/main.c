#include <stdio.h>

int squares(int n, int *lookup) {
    if (lookup[n] == 0)
        lookup[n] = n * n + squares(n - 1, lookup);
    return lookup[n];
}

int main() {
    int lookup[101] = {0};
    lookup[1] = 1;
    int n;
    scanf("%d", &n);
    while (n > 0) {
        printf("%d\n", squares(n, lookup));
        scanf("%d", &n);
    }
    return 0;
}
