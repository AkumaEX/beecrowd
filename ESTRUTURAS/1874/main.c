#include <stdio.h>

int getCells(int h, int p, int cells[h][p]) {
    int numVacantSpaces = 0;
    for (int line = 0; line < h; line++)
        for (int column = 0; column < p; column++) {
            scanf("%d", &cells[line][column]);
            if (cells[line][column] < 1)
                numVacantSpaces++;
        }
    return numVacantSpaces;
}

void getVacantSpaces(int h, int p, int cells[h][p], int numVacantSpaces, int vacantSpaces[numVacantSpaces][2]) {
    int vacantPosition = 0;
    for (int column = p - 1; column >= 0; column--)
        for (int line = h - 1; line >= 0; line--)
            if (cells[line][column] < 1) {
                vacantSpaces[vacantPosition][0] = line;
                vacantSpaces[vacantPosition][1] = column;
                vacantPosition++;
            }
}

void insertNewBlocks(int h, int p, int f, int cells[h][p], int numVacantSpaces, int vacantSpaces[numVacantSpaces][2]) {
    for (int insertion = 0; insertion < f; insertion++) {
        int block;
        scanf("%d", &block);
        if (insertion < numVacantSpaces) {
            int line = vacantSpaces[insertion][0];
            int column = vacantSpaces[insertion][1];
            cells[line][column] = block;
        }
    }
}

void printFormatted(int h, int p, int cells[h][p]) {
    for (int line = 0; line < h; line++) {
        for (int column = 0; column < p - 1; column++)
            printf("%d ", cells[line][column]);
        printf("%d\n", cells[line][p - 1]);
    }
}

int main() {
    int h, p, f;
    scanf("%d %d %d", &h, &p, &f);
    while (h > 0 && p > 0 && f > 0) {
        int cells[h][p];
        int numVacantSpaces = getCells(h, p, cells);
        int vacantSpaces[numVacantSpaces][2];
        getVacantSpaces(h, p, cells, numVacantSpaces, vacantSpaces);
        insertNewBlocks(h, p, f, cells, numVacantSpaces, vacantSpaces);
        printFormatted(h, p, cells);
        scanf("%d %d %d", &h, &p, &f);
    }
    return 0;
}
