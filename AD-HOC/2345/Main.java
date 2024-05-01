import java.util.Scanner;

public class Main {

    static int difference(int a, int b, int c, int d) {
        return Math.abs(a - b - c + d);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int c = scanner.nextInt();
        int d = scanner.nextInt();
        System.out.println(difference(a, b, c, d));
        scanner.close();
    }
}
