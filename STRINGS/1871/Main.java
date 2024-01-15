import java.util.Scanner;

public class Main {

    static String noZeroSum(int m, int n) {
        return String.valueOf(m + n).replaceAll("0", "");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int m = scanner.nextInt();
        int n = scanner.nextInt();
        while (m > 0 && n > 0) {
            System.out.println(noZeroSum(m, n));
            m = scanner.nextInt();
            n = scanner.nextInt();
        }
        scanner.close();
    }
}
