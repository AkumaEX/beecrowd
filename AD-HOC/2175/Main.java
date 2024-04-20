import java.util.Locale;
import java.util.Scanner;

public class Main {

    static String fastest(double o, double b, double i) {
        if (o < b && o < i)
            return "Otavio";
        if (b < o && b < i)
            return "Bruno";
        if (i < o && i < b)
            return "Ian";
        return "Empate";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        double o = scanner.nextDouble();
        double b = scanner.nextDouble();
        double i = scanner.nextDouble();
        System.out.println(fastest(o, b, i));
        scanner.close();
    }
}
