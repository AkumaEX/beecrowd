#include <stdio.h>

int main() {
    int n, students, max = 0;
    scanf("%d", &n);
    while (n--) {
        scanf("%d", &students);
        max += students - students % 3;
    }
    printf("%d\n", max);
    return 0;
}
