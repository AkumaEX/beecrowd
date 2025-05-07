import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        int c = scanner.nextInt();
        int d = scanner.nextInt();
        boolean accepted = b > c && d > a && c + d > a + b && c >= 0 && d >= 0 && a % 2 == 0;
        System.out.println(accepted ? "Valores aceitos" : "Valores nao aceitos");
        scanner.close();
    }
}
