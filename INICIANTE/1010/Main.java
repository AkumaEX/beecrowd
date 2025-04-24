import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        float total = 0;
        for (int i = 0; i < 2; i++) {
            scanner.next();
            total += scanner.nextInt() * scanner.nextFloat();
        }
        System.out.printf("VALOR A PAGAR: R$ %.2f\n", total);
        scanner.close();
    }
}
