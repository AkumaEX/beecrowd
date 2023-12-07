#include <stdio.h>

void update(int *desks, int a, int b) {
    int temp = desks[a];
    desks[a] = desks[b];
    desks[b] = temp;
}

int query(int *desks, int employee, int a) {
    if (employee == a) return 0;
    return 1 + query(desks, desks[employee], a);
}

int main() {
    int n, q, e, a, b;
    scanf("%d %d", &n, &q);
    int desks[n];
    for (int i = 0; i < n; i++)
        desks[i] = i;
    for (int times = 0; times < q; times++) {
        scanf("%d %d", &e, &a), a--;
        if (e == 1) {
            scanf("%d", &b), b--;
            update(desks, a, b);
        } else {
            printf("%d\n", query(desks, desks[a], a));
        }
    }
    return 0;
}
