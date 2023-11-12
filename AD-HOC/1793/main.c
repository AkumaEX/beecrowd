#include <stdio.h>

int getActiveTime(int n) {
    int activeTime = n * 10;
    int time, nextTime, difference;
    scanf("%d", &time);
    for (int times = 0; times < n - 1; times++) {
        scanf("%d", &nextTime);
        if ((difference = nextTime - time) < 10)
            activeTime -= 10 - difference;
        time = nextTime;
    }
    return activeTime;
}

int main() {
    int n;
    scanf("%d", &n);
    while (n > 0) {
        printf("%d\n", getActiveTime(n));
        scanf("%d", &n);
    }
    return 0;
}
