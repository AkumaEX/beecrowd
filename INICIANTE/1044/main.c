#include <stdbool.h>
#include <stdio.h>

bool isMultiple(int a, int b) {
    return a % b == 0 || b % a == 0;
}

int main() {
    int a, b;
    scanf("%d %d", &a, &b);
    printf(isMultiple(a, b) ? "Sao Multiplos\n" : "Nao sao Multiplos\n");
    return 0;
}
