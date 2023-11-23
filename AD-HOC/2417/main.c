#include <stdio.h>

char *topTeam(int cv, int ce, int cs, int fv, int fe, int fs) {
    int cScore = 3 * cv + ce;
    int fScore = 3 * fv + fe;
    if (cScore == fScore) {
        cScore += cs;
        fScore += fs;
    }
    if (cScore > fScore) return "C";
    if (fScore > cScore) return "F";
    return "=";
}

int main() {
    int cv, ce, cs, fv, fe, fs;
    scanf("%d %d %d %d %d %d", &cv, &ce, &cs, &fv, &fe, &fs);
    printf("%s\n", topTeam(cv, ce, cs, fv, fe, fs));
    return 0;
}
