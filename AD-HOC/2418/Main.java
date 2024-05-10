import java.util.Arrays;
import java.util.Locale;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static double score(double[] n) {
        Arrays.sort(n);
        return n[1] + n[2] + n[3];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in).useLocale(Locale.ENGLISH);
        double[] n = IntStream.range(0, 5).mapToDouble(i -> scanner.nextDouble()).toArray();
        System.out.printf("%.1f\n", score(n));
        scanner.close();
    }
}
