#include <stdio.h>

int score(int n, int v[n]) {
    int longest = 0, sequence = 1;
    for (int i = 0; i < n - 1; i++) {
        if (v[i] == v[i + 1]) {
            sequence++;
            if (sequence > longest) longest = sequence;
        } else {
            sequence = 1;
        }
    }
    return longest;
}

int main() {
    int n;
    scanf("%d", &n);
    int v[n];
    for (int i = 0; i < n; i++) scanf("%d", &v[i]);
    printf("%d\n", score(n, v));
    return 0;
}
