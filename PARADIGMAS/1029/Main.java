import java.util.Scanner;

public class Main {

    static int fibonacci(int n, int[] lookup) {
        if (n < 2)
            return n;
        if (lookup[n] == 0)
            lookup[n] = fibonacci(n - 1, lookup) + fibonacci(n - 2, lookup);
        return lookup[n];
    }

    public static void main(String[] args) {
        int[] lookup = new int[40];
        for (int i = 0; i < 40; i++)
            lookup[i] = 0;
        Scanner scanner = new Scanner(System.in);
        int N = scanner.nextInt();
        for (int i = 0; i < N; i++) {
            int n = scanner.nextInt();
            int result = fibonacci(n, lookup);
            int num_calls = 2 * fibonacci(n + 1, lookup) - 2;
            System.out.printf("fib(%d) = %d calls = %d\n", n, num_calls, result);
        }
        scanner.close();
    }
}