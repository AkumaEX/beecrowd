import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        int positive = 0;
        for (int i = 0; i < 6; i++)
            if (scanner.nextDouble() > 0)
                positive++;
        System.out.println(positive + " valores positivos");
        scanner.close();
    }
}
