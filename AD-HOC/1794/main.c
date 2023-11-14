#include <stdio.h>
#include <stdbool.h>

int main() {
    int n, la, lb, sa, sb;
    scanf("%d %d %d %d %d", &n, &la, &lb, &sa, &sb);

    bool isPossible = la <= n && n <= lb && sa <= n && n <= sb;
    printf(isPossible ? "possivel\n" : "impossivel\n");
    return 0;
}
