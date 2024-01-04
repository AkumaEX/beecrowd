#include <stdio.h>

int main() {
    int n, s, transaction;
    scanf("%d %d", &n, &s);
    int min = s;
    for (int day = 0; day < n; day++) {
        scanf("%d", &transaction);
        s += transaction;
        if (s < min) min = s;
    }
    printf("%d\n", min);
    return 0;
}
