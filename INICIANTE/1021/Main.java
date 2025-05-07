import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double n = scanner.nextDouble() + 0.0001;
        System.out.println("NOTAS:");
        for (double bill : new int[] { 100, 50, 20, 10, 5, 2 }) {
            System.out.printf("%d nota(s) de R$ %.2f\n", (int) (n / bill), bill);
            n %= bill;
        }
        System.out.println("MOEDAS:");
        for (double coin : new double[] { 1, 0.50, 0.25, 0.10, 0.05, 0.01 }) {
            System.out.printf("%d moeda(s) de R$ %.2f\n", (int) (n / coin), coin);
            n %= coin;
        }
        scanner.close();
    }
}
