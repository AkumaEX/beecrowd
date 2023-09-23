#include <stdio.h>

int main() {
    int n;
    while (scanf("%d", &n) != EOF) {
        int notes[n];
        for (int i = 0; i < n; i++)
            scanf("%d", &notes[i]);
        int sum = 0;
        for (int i = 0; i < n; i++)
            sum += notes[i];
        if (sum % n > 0)
            printf("%d\n", -1);
        else {
            int changes = 0;
            int average = sum / n;
            for (int i = 0; i < n; i++)
                if (notes[i] > average)
                    changes += notes[i] - average;
            printf("%d\n", changes + 1);
        }
    }
    return 0;
}
