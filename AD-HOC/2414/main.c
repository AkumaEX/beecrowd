#include <stdio.h>

int main() {
    int max = 0, num = 0;
    scanf("%d", &num);
    while (num > 0) {
        max = num > max ? num : max;
        scanf("%d", &num);
    }
    printf("%d\n", max);
    return 0;
}
