#include <stdio.h>

void printFormatted(int days) {
    int years = days / 365;
    days = days % 365;
    int months = days / 30;
    days = days % 30;
    printf("%d ano(s)\n", years);
    printf("%d mes(es)\n", months);
    printf("%d dia(s)\n", days);
}

int main() {
    int days;
    scanf("%d", &days);
    printFormatted(days);
    return 0;
}
