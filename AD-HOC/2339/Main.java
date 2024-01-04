import java.util.Scanner;

public class Main {

    static boolean isEnough(int c, int p, int f) {
        return c * f <= p;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        int p = scanner.nextInt();
        int f = scanner.nextInt();
        System.out.println(isEnough(c, p, f) ? "S" : "N");
        scanner.close();
    }
}
