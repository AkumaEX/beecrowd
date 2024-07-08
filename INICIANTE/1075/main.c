#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    for (int num = 1; num < 10000; num++) {
        if (num % n == 2) printf("%d\n", num);
    }
    return 0;
}
