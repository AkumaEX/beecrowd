import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        int t;
        while ((t = scanner.nextInt()) > 0) {
            for (int i = 0; i < t; i++) {
                int q = scanner.nextInt();
                double a = scanner.nextDouble();
                double b = scanner.nextDouble();
                System.out.printf("Size #%d:\n", i + 1);
                System.out.printf("Ice Cream Used: %.2f cm2\n", q * (a + b) * 2.5);
            }
            System.out.println();
        }
        scanner.close();
    }
}
