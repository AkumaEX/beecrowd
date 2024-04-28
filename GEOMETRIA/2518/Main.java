import java.util.Scanner;

public class Main {

    static double area(int n, int h, int c, int l) {
        double d = Math.sqrt((Math.pow(h, 2) + Math.pow(c, 2)));
        return n * d * l / 10000;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            int h = scanner.nextInt();
            int c = scanner.nextInt();
            int l = scanner.nextInt();
            System.out.printf("%.4f\n", area(n, h, c, l));
        }
        scanner.close();
    }
}
