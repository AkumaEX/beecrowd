import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int na = scanner.nextInt();
        double da = scanner.nextDouble();
        double va = scanner.nextDouble();
        int nb = scanner.nextInt();
        double db = scanner.nextDouble();
        double vb = scanner.nextDouble();
        System.out.println((da / va) < (db / vb) ? na : nb);
        scanner.close();
    }
}
