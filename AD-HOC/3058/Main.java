import java.util.Arrays;
import java.util.Locale;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        int n = scanner.nextInt();
        float[] prices = new float[n];
        for (int store = 0; store < n; store++) {
            float p = scanner.nextFloat();
            float g = scanner.nextFloat();
            prices[store] = 1000 * p / g;
        }
        Arrays.sort(prices);
        System.out.printf("%.2f\n", prices[0]);
        scanner.close();
    }
}
