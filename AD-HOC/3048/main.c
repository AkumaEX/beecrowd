#include <stdio.h>

int main() {
    int n, previous, next, maxSequence = 1;
    scanf("%d %d", &n, &previous);
    for (int i = 1; i < n; i++) {
        scanf("%d", &next);
        if (previous != next) maxSequence++;
        previous = next;
    }
    printf("%d\n", maxSequence);
    return 0;
}
