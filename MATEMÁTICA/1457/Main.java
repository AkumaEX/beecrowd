import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main {

    static long kFactorial(long n, long i, long k) {
        if (n <= i * k)
            return 1;
        return (n - i * k) * kFactorial(n, i + 1, k);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Pattern pattern = Pattern.compile("(\\d+)(!+)");
        long t = scanner.nextInt();
        for (long times = 0; times < t; times++) {
            Matcher match = pattern.matcher(scanner.next());
            if (match.find()) {
                long n = Integer.parseInt(match.group(1));
                long k = match.group(2).length();
                System.out.println(kFactorial(n, 0, k));
            }
        }
        scanner.close();
    }
}