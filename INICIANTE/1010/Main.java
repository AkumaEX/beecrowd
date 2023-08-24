import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int quantity;
        float value, total = 0;
        while (scanner.hasNext()) {
            scanner.next();
            quantity = scanner.nextInt();
            value = scanner.nextFloat();
            total += quantity * value;
        }
        System.out.printf("VALOR A PAGAR: R$ %.2f\n", total);
        scanner.close();
    }
}