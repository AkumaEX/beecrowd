import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int delta = scanner.nextInt();
        System.out.printf("%d minutos\n", delta * 2);
        scanner.close();
    }
}
