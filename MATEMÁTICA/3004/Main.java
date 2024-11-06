import java.util.Scanner;

public class Main {

    static boolean isSmaller(int a, int b, int c, int d) {
        return a < c && b < d || a < d && b < c;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0) {
            int a = scanner.nextInt();
            int b = scanner.nextInt();
            int c = scanner.nextInt();
            int d = scanner.nextInt();
            System.out.println(isSmaller(a, b, c, d) ? "S" : "N");
        }
        scanner.close();
    }
}
