import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int prod = a * b;
        System.out.printf("PROD = %d\n", prod);
        scanner.close();
    }
}
