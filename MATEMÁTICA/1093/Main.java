import java.util.Scanner;

public class Main {

    public static double prob(double ev1, double ev2, double at, double d) {
        double i = Math.ceil(ev1 / d);
        double n = Math.ceil(ev2 / d) + i;
        double r = (6 - at) / at;
        if (at == 3)
            return i / n;
        return (1 - Math.pow(r, i)) / (1 - Math.pow(r, n));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (true) {
            int ev1 = scanner.nextInt();
            int ev2 = scanner.nextInt();
            int at = scanner.nextInt();
            int d = scanner.nextInt();
            if (ev1 == 0 && ev2 == 0 && at == 0 && d == 0)
                break;
            double p = prob(ev1, ev2, at, d) * 100;
            System.out.printf("%.1f\n", p);
        }
        scanner.close();
    }
}
