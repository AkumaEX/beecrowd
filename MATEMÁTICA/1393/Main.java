import java.util.Scanner;

public class Main {

    static int fibonacci(int n, int[] memo) {
        if (memo[n] > 0)
            return memo[n];
        memo[n] = n < 2 ? n : fibonacci(n - 1, memo) + fibonacci(n - 2, memo);
        return memo[n];
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] memo = new int[42];
        int n;
        while ((n = scanner.nextInt()) > 0) {
            System.out.println(fibonacci(n + 1, memo));
        }
        scanner.close();
    }
}
