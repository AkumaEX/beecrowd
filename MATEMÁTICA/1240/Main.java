import java.util.Scanner;

public class Main {

    static boolean fits(int b, int a) {
        int numDigitsB = String.valueOf(b).length();
        int lastDigitsA = a % (int) Math.pow(10, numDigitsB);
        return lastDigitsA == b;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            int a = scanner.nextInt();
            int b = scanner.nextInt();
            if (fits(b, a))
                System.out.println("encaixa");
            else
                System.out.println("nao encaixa");
        }
        scanner.close();
    }
}
