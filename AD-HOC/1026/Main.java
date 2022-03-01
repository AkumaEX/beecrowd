import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            long a = scanner.nextLong();
            long b = scanner.nextLong();
            System.out.printf("%d\n", a ^ b);
        }
        scanner.close();
    }
}
