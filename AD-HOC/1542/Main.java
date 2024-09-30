import java.util.Scanner;

public class Main {

    static int totalPages(int q, int d, int p) {
        return (q * d * p) / (p - q);
    }

    static void formattedPrint(int pages) {
        System.out.printf("%d %s\n", pages, pages > 1 ? "paginas" : "pagina");
    }
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int q, d, p;
        while ((q = scanner.nextInt()) > 0) {
            d = scanner.nextInt();
            p = scanner.nextInt();
            int pages = totalPages(q, d, p);
            formattedPrint(pages);
        }
        scanner.close();
    }
}
