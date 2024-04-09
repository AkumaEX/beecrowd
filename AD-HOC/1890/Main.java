import java.util.Scanner;

public class Main {

    static int numPlates(int c, int d) {
        return c > 0 || d > 0 ? (int) (Math.pow(26, c) * Math.pow(10, d)) : 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        while (t-- > 0) {
            int c = scanner.nextInt();
            int d = scanner.nextInt();
            System.out.println(numPlates(c, d));
        }
        scanner.close();
    }
}
