#include <stdio.h>

int elapsed(int fromDay, int fromMonth, int toDay, int toMonth) {
    int days[12] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    int total = toDay - fromDay;
    for (int month = fromMonth; month < toMonth; month++)
        total += days[month - 1];
    return total;
}

int main() {
    int fromDay, fromMonth, toDay, toMonth;
    scanf("%d %d %d %d", &fromDay, &fromMonth, &toDay, &toMonth);
    printf("%d\n", elapsed(fromDay, fromMonth, toDay, toMonth));
    return 0;
}
