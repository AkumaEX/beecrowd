import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        scanner.next();
        Double salary = scanner.nextDouble();
        Double sales = scanner.nextDouble();
        System.out.printf("TOTAL = R$ %.2f\n", salary + sales * 0.15);
        scanner.close();
    }
}