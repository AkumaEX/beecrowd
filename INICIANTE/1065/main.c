#include <stdio.h>

int main() {
    int even = 0, times = 5, number;
    while (times--) {
        scanf("%d", &number);
        even += number % 2 == 0;
    }
    printf("%d valores pares\n", even);
    return 0;
}
