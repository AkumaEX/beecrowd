import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        while (scanner.hasNext()) {
            double a = scanner.nextDouble();
            double b = scanner.nextDouble();
            double c = scanner.nextDouble();
            a *= 3.141592654 / 180;
            System.out.printf("%.2f\n", (Math.tan(a) * b + c) * 5);
        }
        scanner.close();
    }
}
