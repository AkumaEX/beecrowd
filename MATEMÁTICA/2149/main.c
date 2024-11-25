#include <stdio.h>

unsigned long long phillBonati(int n, unsigned long long memo[18]) {
    if (memo[n] == 0) {
        if (n < 2)
            memo[n] = n;
        else if (n % 2)
            memo[n] = phillBonati(n - 1, memo) * phillBonati(n - 2, memo);
        else
            memo[n] = phillBonati(n - 1, memo) + phillBonati(n - 2, memo);
    }
    return memo[n];
}

int main() {
    unsigned long long memo[18] = {0};
    int n;
    while (scanf("%d", &n) != EOF)
        printf("%llu\n", phillBonati(n - 1, memo));
    return 0;
}
