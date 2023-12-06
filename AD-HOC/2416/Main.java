import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        int n = scanner.nextInt();
        System.out.println(c % n);
        scanner.close();
    }
}