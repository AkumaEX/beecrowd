import java.util.Locale;
import java.util.Scanner;

public class Main {

    static double h(double a, double d, double r) {
        double x = (90 - r) * Math.PI / 180;
        return a - Math.tan(x) * d;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        while (scanner.hasNext()) {
            double a = scanner.nextDouble();
            double d = scanner.nextDouble();
            double r = scanner.nextDouble();
            System.out.printf("%.4f\n", h(a, d, r));
        }
        scanner.close();
    }
}
