#include <stdbool.h>>
#include <stdio.h>

int main() {
    int n;
    scanf("%d", &n);
    while (n != 0) {
        int h[n];
        for (int i = 0; i < n; i++) {
            scanf("%d", &h[i]);
        }
        bool directions[n];
        for (int i = 0; i < n; i++) {
            bool is_ascending = (h[(i + 1) % n] - h[i]) > 0;
            directions[i] = is_ascending;
        }
        int peaks = 0;
        for (int i = 0; i < n; i++) {
            bool direction_change = directions[(i + 1) % n] != directions[i];
            peaks += direction_change;
        }
        printf("%d\n", peaks);
        scanf("%d", &n);
    }
    return 0;
}
