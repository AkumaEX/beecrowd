import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        for (int n, test = 1, difference = 0; (n = scanner.nextInt()) > 0; test++, difference = 0, System.out.println()) {
            System.out.printf("Teste %d\n", test);
            while (n-- > 0) {
                int j = scanner.nextInt();
                int z = scanner.nextInt();
                difference += j - z;
                System.out.println(difference);
            }
        }
        scanner.close();
    }
}
