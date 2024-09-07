#include <stdio.h>

int main() {
    int t, n;
    scanf("%d", &t);
    while (t--) {
        scanf("%d", &n);
        printf("%s\n", n % 2 ? "9" : "1");
    }
    return 0;
}
