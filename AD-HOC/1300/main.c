#include <stdio.h>

int main() {
    int angle;
    while (scanf("%d", &angle) != EOF) {
        if (angle % 6 == 0)
            printf("Y\n");
        else
            printf("N\n");
    }
    return 0;
}
