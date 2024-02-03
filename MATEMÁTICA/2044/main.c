#include <stdio.h>

int main() {
    int n, debt;
    scanf("%d", &n);
    while (n > 0) {
        int cumulativeDebt = 0;
        int timesToAsk = 0;
        for (int i = 0; i < n; i++) {
            scanf("%d", &debt);
            cumulativeDebt += debt;
            if (cumulativeDebt % 100 == 0) timesToAsk++;
        }
        printf("%d\n", timesToAsk);
        scanf("%d", &n);
    }
    return 0;
}
