#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        int t;
        scanf("%d", &t);
        int shoot[t];
        for (int j = 0; j < t; j++)
            scanf("%d", &shoot[j]);
        char jump[t+1]; // t+1 for \0
        scanf("%s", &jump);
        int hit = 0;
        for (int j = 0; j < t; j++)
            if (shoot[j] > 2 && jump[j] == 'J' || shoot[j] < 3 && jump[j] == 'S')
                hit++;
        printf("%d\n", hit);
    }
    return 0;
}
