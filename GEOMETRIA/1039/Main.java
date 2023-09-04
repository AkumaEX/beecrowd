import java.lang.Math;
import java.util.Scanner;

public class Main {

    static double distance(int x1, int y1, int x2, int y2) {
        return Math.sqrt(Math.pow((x1 - x2), 2) + Math.pow((y1 - y2), 2));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int r1 = scanner.nextInt();
            int x1 = scanner.nextInt();
            int y1 = scanner.nextInt();
            int r2 = scanner.nextInt();
            int x2 = scanner.nextInt();
            int y2 = scanner.nextInt();
            if (distance(x1, y1, x2, y2) + r2 > r1) {
                System.out.println("MORTO");
            } else {
                System.out.println("RICO");
            }
        }
        scanner.close();
    }
}
