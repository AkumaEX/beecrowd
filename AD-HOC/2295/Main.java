import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double a = scanner.nextDouble();
        double g = scanner.nextDouble();
        double ra = scanner.nextDouble();
        double rg = scanner.nextDouble();
        System.out.println(ra / a > rg / g ? "A" : "G");
        scanner.close();
    }
}
