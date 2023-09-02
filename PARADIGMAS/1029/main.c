#include <stdio.h>

int fibonacci(int n, int* lookup) {
    if (n < 2) return n;
    if (lookup[n] == 0) lookup[n] = fibonacci(n - 1, lookup) + fibonacci(n - 2, lookup);
    return lookup[n];
}

int main() {
    int* lookup[40] = {0};
    int N, n, result, num_calls;
    scanf("%d", &N);
    for (int i = 0; i < N; i++) {
        scanf("%d", &n);
        result = fibonacci(n, lookup);
        num_calls = 2 * fibonacci(n + 1, lookup) - 2;
        printf("fib(%d) = %d calls = %d\n", n, num_calls, result);
    }
    return 0;
}
