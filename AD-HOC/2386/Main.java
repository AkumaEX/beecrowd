import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int n = scanner.nextInt();
        int quantity = 0;
        while (n-- > 0) {
            int f = scanner.nextInt();
            if (a * f >= 40000000)
                quantity++;
        }
        System.out.println(quantity);
        scanner.close();
    }
}
