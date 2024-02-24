import java.util.Locale;
import java.util.Scanner;

public class Main {

    static double total(int code, int qty) {
        double[] prices = { 4.0, 4.5, 5.0, 2.0, 1.5 };
        return prices[code - 1] * qty;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.US);
        int code = scanner.nextInt();
        int qty = scanner.nextInt();
        System.out.printf("Total: R$ %.2f\n", total(code, qty));
        scanner.close();
    }
}
