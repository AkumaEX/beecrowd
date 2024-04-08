#include <stdbool.h>
#include <stdio.h>

bool majorityOk(int q, int opinions) {
    return opinions < (float)q / 2;
}

int main() {
    int q, v, opinions = 0;
    scanf("%d", &q);
    for (int i = 0; i < q; i++) {
        scanf("%d", &v);
        opinions += v;
    }
    printf(majorityOk(q, opinions) ? "Y\n" : "N\n");
    return 0;
}
