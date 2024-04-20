  #include <stdio.h>

char *fastest(double o, double b, double i) {
    if (o < b && o < i) return "Otavio";
    if (b < o && b < i) return "Bruno";
    if (i < o && i < b) return "Ian";
    return "Empate";
}

int main() {
    double o, b, i;
    scanf("%lf %lf %lf", &o, &b, &i);
    printf("%s\n", fastest(o, b, i));
    return 0;
}
