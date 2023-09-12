#include <stdio.h>

int main() {
    int k, n, m, x, y;
    scanf("%d", &k);
    while (k != 0) {
        scanf("%d %d", &n, &m);
        for (int i = 0; i < k; i++) {
            scanf("%d %d", &x, &y);
            if (x == n || y == m)
                printf("divisa\n");
            else if (x < n)
                if (y < m)
                    printf("SO\n");
                else
                    printf("NO\n");
            else if (y < m)
                printf("SE\n");
            else
                printf("NE\n");
        }
        scanf("%d", &k);
    }
    return 0;
}
