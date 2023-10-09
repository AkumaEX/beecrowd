#include <stdio.h>

void fillInitialValues(int matrix[9][9]) {
    for (int i = 0; i < 7; i += 2)
        scanf("%d", &matrix[6][i]);
    for (int i = 0; i < 9; i += 2)
        scanf("%d", &matrix[8][i]);
}

void solveBaseValues(int matrix[9][9]) {
    // i is the index of the four base triangles
    for (int i = 0; i < 7; i += 2)
        matrix[8][i + 1] = (matrix[6][i] - matrix[8][i] - matrix[8][i + 2]) / 2;
}

void fillAllValues(int matrix[9][9]) {
    // from line 7 to the top
    for (int line = 7; line >= 0; line--)
        for (int i = 0; i <= line; i++)
            matrix[line][i] = matrix[line + 1][i] + matrix[line + 1][i + 1];
}

void printPyramid(int matrix[9][9]) {
    for (int line = 0; line < 9; line++) {
        for (int i = 0; i < line; i++) {
            printf("%d ", matrix[line][i]);
        }
        printf("%d\n", matrix[line][line]);
    }
}

int main() {
    int n;
    char trash[100];
    scanf("%d", &n);
    for (int times = 0; times < n; times++) {
        // top half values of the pyramid aren't necessary
        fgets(trash, 100, stdin);
        fgets(trash, 100, stdin);
        fgets(trash, 100, stdin);
        fgets(trash, 100, stdin);
        int matrix[9][9];
        fillInitialValues(matrix);
        solveBaseValues(matrix);
        fillAllValues(matrix);
        printPyramid(matrix);
    }
    return 0;
}
