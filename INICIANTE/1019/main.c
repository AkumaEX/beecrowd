#include <stdio.h>

void printFormatted(int n) {
    int hours = n / 3600;
    n = n % 3600;
    int minutes = n / 60;
    int seconds = n % 60;
    printf("%d:%d:%d\n", hours, minutes, seconds);
}

int main() {
    int n;
    scanf("%d", &n);
    printFormatted(n);
    return 0;
}
