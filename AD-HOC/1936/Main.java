import java.util.Scanner;

public class Main {

    static int smallestFactorialSum(int n) {
        int k = 0;
        int[] factorials = { 40320, 5040, 720, 120, 24, 6, 2, 1 };
        for (int a : factorials) {
            while (n >= a) {
                n -= a;
                k += 1;
            }
            if (n == 0)
                break;
        }
        return k;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        System.out.println(smallestFactorialSum(n));
        scanner.close();
    }
}