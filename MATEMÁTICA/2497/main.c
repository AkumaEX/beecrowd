#include <stdio.h>

int main() {
    int experiment, n;
    for (experiment = 1, scanf("%d", &n); n > -1; experiment++, scanf("%d", &n))
        printf("Experiment %d: %d full cycle(s)\n", experiment, n / 2);
    return 0;
}
