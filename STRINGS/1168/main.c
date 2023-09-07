#include <stdio.h>

int main() {
    int num_leds[10] = {6, 2, 5, 5, 4, 5, 6, 3, 7, 6};
    int n, total, digit;
    char c;
    scanf("%d\n", &n);
    for (int i = 0; i < n; i++) {
        total = 0;
        while ((c = getchar()) != '\n') {
            if (c == ' ') continue;
            digit = c - '0';
            total += num_leds[digit];
        }
        printf("%d leds\n", total);
    }
    return 0;
}
