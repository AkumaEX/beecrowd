import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        for (int test = 1, n = scanner.nextInt(); n > 0; test++, n = scanner.nextInt()) {
            System.out.printf("Teste %d\n", test);
            String p1 = scanner.next();
            String p2 = scanner.next();
            while (n-- > 0) {
                int h1 = scanner.nextInt();
                int h2 = scanner.nextInt();
                System.out.println((h1 + h2) % 2 == 0 ? p1 : p2);
            }
            System.out.println();
        }
        scanner.close();
    }
}
