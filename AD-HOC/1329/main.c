#include <stdio.h>

int main() {
    int n, r;
    scanf("%d", &n);
    while (n != 0) {
        int john = 0;
        for (int i = 0; i < n; i++) {
            scanf("%d", &r);
            john += r;
        }
        int mary = n - john;
        printf("Mary won %d times and John won %d times\n", mary, john);
        scanf("%d", &n);
    }
    return 0;
}
