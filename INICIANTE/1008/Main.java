import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int number = scanner.nextInt();
        int hours = scanner.nextInt();
        double wage = scanner.nextDouble();
        scanner.close();

        double salary = hours * wage;
        System.out.printf("NUMBER = %d\n", number);
        System.out.printf("SALARY = U$ %.2f\n", salary);
    }
}
