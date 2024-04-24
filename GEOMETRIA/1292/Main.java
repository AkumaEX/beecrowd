import java.util.Locale;
import java.util.Scanner;

public class Main {

    static double largestSide(double f) {
        return f * Math.sin(Math.toRadians(108)) / Math.sin(Math.toRadians(63));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        while (scanner.hasNext()) {
            double f = scanner.nextDouble();
            System.out.printf("%.10f\n", largestSide(f));
        }
        scanner.close();
    }
}
