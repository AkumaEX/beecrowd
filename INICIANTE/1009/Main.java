import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String name = scanner.nextLine();
        Double salary = scanner.nextDouble();
        Double sales = scanner.nextDouble();
        scanner.close();

        Double total = salary + sales * 0.15;
        System.out.printf("TOTAL = R$ %.2f\n", total);
    }
}