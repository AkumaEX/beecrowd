import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int r = scanner.nextInt();
        System.out.println((long) Math.pow(3, r));
        scanner.close();
    }
}
