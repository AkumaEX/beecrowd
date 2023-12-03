import java.util.Scanner;

public class Main {
    static int getPieces(int n, Scanner scanner) {
        int pieces = 0;
        for (int i = 0; i < n; i++)
            pieces += scanner.nextInt() - 1;
        return pieces;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int pieces = getPieces(n, scanner);
        System.out.println(pieces);
        scanner.close();
    }
}
