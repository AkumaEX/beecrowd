import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int A = scanner.nextInt();
        int B = scanner.nextInt();
        int C = scanner.nextInt();
        int D = scanner.nextInt();
        scanner.close();

        int DIFERENCA = A * B - C * D;
        System.out.printf("DIFERENCA = %d\n", DIFERENCA);
    }
}
