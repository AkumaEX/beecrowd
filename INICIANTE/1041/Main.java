import java.util.Locale;
import java.util.Scanner;

public class Main {

    static String quadrant(float x, float y) {
        if (x == 0.0 || y == 0.0) {
            if (x == 0.0 && y == 0.0)
                return "Origem";
            return x == 0.0 ? "Eixo Y" : "Eixo X";
        }
        if (x > 0)
            return y > 0 ? "Q1" : "Q4";
        return y > 0 ? "Q2" : "Q3";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        float x = scanner.nextFloat();
        float y = scanner.nextFloat();
        System.out.println(quadrant(x, y));
        scanner.close();
    }
}
