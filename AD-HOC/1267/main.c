#include <stdbool.h>
#include <stdio.h>

bool noAbsence(int n, int d, int attendanceList[d][n]) {
    for (int alumni = 0; alumni < n; alumni++) {
        bool absence = false;
        for (int dinner = 0; dinner < d; dinner++) {
            if (attendanceList[dinner][alumni] == 0) {
                absence = true;
                break;
            }
        }
        if (!absence) return true;
    }
    return false;
}

int main() {
    int n, d;
    scanf("%d %d", &n, &d);
    while (n != 0 || d != 0) {
        int attendanceList[d][n];
        for (int dinner = 0; dinner < d; dinner++)
            for (int alumni = 0; alumni < n; alumni++)
                scanf("%d", &attendanceList[dinner][alumni]);
        if (noAbsence(n, d, attendanceList))
            printf("yes\n");
        else
            printf("no\n");
        scanf("%d %d", &n, &d);
    }
    return 0;
}
