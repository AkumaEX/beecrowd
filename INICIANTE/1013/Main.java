import java.util.Scanner;

public class Main {

    static int maior(int a, int b) {
        return (a + b + Math.abs(a - b)) / 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int c = scanner.nextInt();
        System.out.printf("%d eh o maior\n", maior(maior(a, b), c));
        scanner.close();
    }
}
