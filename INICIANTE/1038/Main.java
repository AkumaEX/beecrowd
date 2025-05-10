import java.util.Locale;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.US);
        double[] prices = { 0.0, 4.0, 4.5, 5.0, 2.0, 1.5 };
        int code = scanner.nextInt();
        int quantity = scanner.nextInt();
        System.out.printf("Total: R$ %.2f\n", prices[code] * quantity);
        scanner.close();
    }
}
