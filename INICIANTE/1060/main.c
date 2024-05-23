#include <stdio.h>

int main() {
    int positive = 0;
    double number;
    for (int i = 0; i < 6; i++) {
        scanf("%lf", &number);
        if (number > 0) positive++;
    }
    printf("%d valores positivos\n", positive);
    return 0;
}
