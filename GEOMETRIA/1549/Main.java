import java.util.Scanner;

public class Main {

    static double h(double n, double l, double b, double B, double H) {
        if (b == B)
            return l / (n * Math.PI * Math.pow(b, 2));
        double r = Math.cbrt(((3 * l * (B - b)) / (n * Math.PI * H)) + Math.pow(b, 3));
        return H * (r - b) / (B - b);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        while (c-- > 0) {
            double n = scanner.nextDouble();
            double l = scanner.nextDouble();
            double b = scanner.nextDouble();
            double B = scanner.nextDouble();
            double H = scanner.nextDouble();
            System.out.printf("%.2f\n", h(n, l, b, B, H));
        }
        scanner.close();
    }
}
