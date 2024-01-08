import java.util.Scanner;

public class Main {

    static void printFormatted(int n) {
        System.out.println(n);
        for (int bill : new int[] { 100, 50, 20, 10, 5, 2, 1 }) {
            System.out.printf("%d nota(s) de R$ %d,00\n", n / bill, bill);
            n = n % bill;
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        printFormatted(n);
        scanner.close();
    }
}
