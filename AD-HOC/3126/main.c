#include <stdio.h>

int main() {
    int n, attended, numAttended = 0;
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        scanf("%d", &attended);
        numAttended += attended;
    }
    printf("%d\n", numAttended);
    return 0;
}
