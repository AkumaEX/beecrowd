#include <stdbool.h>
#include <stdio.h>

bool singleExchange(int m, char *sequence) {
    int differences = 0;
    for (int i = 0; i < m; i++) {
        if (sequence[i] != "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[i]) {
            differences++;
            if (differences > 2) return false;
        }
    }
    return true;
}
int main() {
    int n, m;
    char sequence[26];
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        scanf("%d %s", &m, &sequence);
        printf(singleExchange(m, sequence) ? "There are the chance.\n" : "There aren't the chance.\n");
    }
    return 0;
}
