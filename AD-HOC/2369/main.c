#include <stdio.h>

int getWaterBill(int consumption) {
    if (consumption <= 10) return 7;
    if (consumption <= 30) return 7 + (consumption - 10);
    if (consumption <= 100) return 7 + 20 + (consumption - 30) * 2;
    return 7 + 20 + 140 + (consumption - 100) * 5;
}

int main() {
    int n;
    scanf("%d", &n);
    printf("%d\n", getWaterBill(n));
    return 0;
}
