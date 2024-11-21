#include <stdio.h>

int fibonacci(int n, int memo[42]) {
    if (memo[n]) return memo[n];
    memo[n] = n < 2 ? n : fibonacci(n - 1, memo) + fibonacci(n - 2, memo);
    return memo[n];
}

int main() {
    int n, memo[42] = {0};
    scanf("%d", &n);
    while (n) {
        printf("%d\n", fibonacci(n + 1, memo));
        scanf("%d", &n);
    }
    return 0;
}
