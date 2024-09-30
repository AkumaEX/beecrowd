#include <stdio.h>

int totalPages(int q, int d, int p) {
    return (q * d * p) / (p - q);
}

void formattedPrint(int pages) {
    printf("%d %s\n", pages, pages > 1 ? "paginas" : "pagina");
}

int main() {
    int q, d, p;
    while (scanf("%d", &q) && q > 0) {
        scanf("%d %d", &d, &p);
        int pages = totalPages(q, d, p);
        formattedPrint(pages);
    }
    return 0;
}
