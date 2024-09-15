#include <stdio.h>

int sumBetween(int x, int y) {
    if (x > y) {
        int temp = x;
        x = y;
        y = temp;
    }
    int sum = 0;
    for (int n = x; n <= y; n++)
        if (n % 13) sum += n;
    return sum;
}

int main() {
    int x, y;
    scanf("%d %d", &x, &y);
    printf("%d\n", sumBetween(x, y));
    return 0;
}
