#include <stdio.h>

int main() {
    int n, x;
    scanf("%d", &n);
    while (n--) {
        scanf("%d", &x);
        if (x == 0) printf("NULL\n");
        else {
            printf((x & 1) == 0 ? "EVEN ": "ODD ");
            printf(x < 0 ? "NEGATIVE\n": "POSITIVE\n");
        }
    }
    return 0;
}
