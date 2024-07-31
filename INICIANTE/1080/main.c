#include <stdio.h>

int main() {
    int max = 0, position = 0;
    for (int value, i = 1; i < 101; i++) {
        scanf("%d", &value);
        if (value > max) {
            max = value;
            position = i;
        }
    }
    printf("%d\n", max);
    printf("%d\n", position);
    return 0;
}
