#include <stdio.h>
int main() {
    int h1, m1, h2, m2, minutes;
    scanf("%d %d %d %d", &h1, &m1, &h2, &m2);
    while (h1 != 0 || m1 != 0 || h2 != 0 || m2 != 0) {
        if (m2 < m1) {
            h2 -= 1;
            m2 += 60;
        }
        minutes = m2 - m1;
        if (h2 < h1) h2 += 24;
        minutes += (h2 - h1) * 60;
        printf("%d\n", minutes);
        scanf("%d %d %d %d", &h1, &m1, &h2, &m2);
    }
    return 0;
}
