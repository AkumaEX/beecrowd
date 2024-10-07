import java.util.Scanner;

public class Main {

    static int inside(int ax, int ay, int cx, int cy, int rx, int ry) {
        return ax <= rx && rx <= cx && ay <= ry && ry <= cy ? 1 : 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0) {
            int ax = scanner.nextInt();
            int ay = scanner.nextInt();
            scanner.nextInt();
            scanner.nextInt();
            int cx = scanner.nextInt();
            int cy = scanner.nextInt();
            scanner.nextInt();
            scanner.nextInt();
            int rx = scanner.nextInt();
            int ry = scanner.nextInt();
            System.out.println(inside(ax, ay, cx, cy, rx, ry));
        }
        scanner.close();
    }
}
