import java.util.Locale;
import java.util.Scanner;

public class Main {

    static void formattedPrint(int positives, double values) {
        System.out.printf("%d valores positivos\n", positives);
        System.out.printf("%.1f\n", values / positives);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        int positives = 0;
        double value, values = 0;
        for (int times = 0; times < 6; times++) {
            if ((value = scanner.nextDouble()) > 0) {
                positives++;
                values += value;
            }
        }
        formattedPrint(positives, values);
        scanner.close();
    }
}
