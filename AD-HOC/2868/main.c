#include <stdio.h>
#include <stdlib.h>

int eval(int a, char operator, int b) {
    if (operator== '+') return a + b;
    if (operator== '-') return a - b;
    return a * b;
}

void printFormatted(difference) {
    printf("E");
    for (int repeat = 0; repeat < difference; repeat++) printf("r");
    printf("ou!\n");
}

int main() {
    int c, a, b, result;
    char operator;
    scanf("%d", &c);
    for (int times = 0; times < c; times++) {
        scanf("%d %c %d = %d", &a, &operator, & b, &result);
        int difference = abs(eval(a, operator, b) - result);
        printFormatted(difference);
    }
    return 0;
}
