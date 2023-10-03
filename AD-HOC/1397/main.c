#include <stdio.h>

int main() {
    int n, a, b;
    scanf("%d", &n);
    while (n) {
        int scoreA = 0, scoreB = 0;
        for (int times = 0; times < n; times++) {
            scanf("%d %d", &a, &b);
            if (a > b) scoreA++;
            else if (b > a) scoreB++;
        }
        printf("%d %d\n", scoreA, scoreB);
        scanf("%d", &n);
    }
    return 0;
}
