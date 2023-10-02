import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int l = scanner.nextInt();
        int r = scanner.nextInt();
        while (l != 0 || r != 0) {
            System.out.println(l + r);
            l = scanner.nextInt();
            r = scanner.nextInt();
        }
        scanner.close();
    }
}