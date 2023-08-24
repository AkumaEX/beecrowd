#include <stdio.h>

int count(int digit, int number) {
    int freq, fullset, partialset, pv;
    fullset = 1;
    freq = partialset = pv = 0;

    while (number > 0) {
        int current = number % 10;
        number /= 10;

        freq += current * pv * fullset / 10;
        
        if (current > digit)
            freq += fullset;
        else if (current == digit)
            freq += partialset + 1;

        partialset += current * fullset;
        printf("DEBUG: %d\n", partialset);
        fullset *= 10;
        pv++;
    }

    if (digit == 0)
        freq -= (fullset-1) / 9;
    return freq;
}

int main() {
    int a, b;
    while(scanf("%d %d", &a, &b), a) {
        for (int i = 7; i < 8; i++) {
            printf("xxx%d\n", count(i, b) - count(i, a-1));
        }
        // printf("%d\n", count(9, b) - count(9, a-1));
    }

    return 0;
}
