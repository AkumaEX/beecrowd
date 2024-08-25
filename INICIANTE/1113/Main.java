import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        int y = scanner.nextInt();
        while (x != y) {
            System.out.println(x > y ? "Decrescente" : "Crescente");
            x = scanner.nextInt();
            y = scanner.nextInt();
        }
        scanner.close();
    }
}
