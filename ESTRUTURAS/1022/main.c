#include <stdio.h>

void addition(int n1, int n2, int d1, int d2, int *nl, int *dl) {
    *nl = n1 * d2 + n2 * d1;
    *dl = d1 * d2;
}

void subtraction(int n1, int n2, int d1, int d2, int *nl, int *dl) {
    *nl = n1 * d2 - n2 * d1;
    *dl = d1 * d2;
}

void multiplication(int n1, int n2, int d1, int d2, int *nl, int *dl) {
    *nl = n1 * n2;
    *dl = d1 * d2;
}

void division(int n1, int n2, int d1, int d2, int *nl, int *dl) {
    *nl = n1 * d2;
    *dl = n2 * d1;
}

void simplify(int *nl, int *dl, int *nr, int *dr) {
    int smaller = abs(*nl) < abs(*dl) ? abs(*nl) : abs(*dl);
    for (int i = smaller; i > 0; i--) {
        if ((*nl % i == 0) && (*dl % i == 0)) {
            *nr = *nl / i;
            *dr = *dl / i;
            break;
        }
    }
}

int main() {
    int n, n1, n2, d1, d2, nl, nr, dl, dr;
    char op;
    scanf("%d", &n);
    for (int i = 0; i < n; i++) {
        scanf("%d / %d", &n1, &d1);
        scanf(" %c ", &op);
        scanf(" %d / %d", &n2, &d2);
        switch (op) {
            case '+':
                addition(n1, n2, d1, d2, &nl, &dl);
                break;
            case '-':
                subtraction(n1, n2, d1, d2, &nl, &dl);
                break;
            case '*':
                multiplication(n1, n2, d1, d2, &nl, &dl);
                break;
            default:
                division(n1, n2, d1, d2, &nl, &dl);
                break;
        }
        simplify(&nl, &dl, &nr, &dr);
        printf("%d/%d = %d/%d\n", nl, dl, nr, dr);
    }
    return 0;
}
