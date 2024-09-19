import java.util.Scanner;

public class Main {

    static int totalCarries(int a, int b) {
        int carry = 0, carries = 0;
        while (a > 0 || b > 0) {
            carry = (carry + a % 10 + b % 10) / 10;
            carries += carry;
            a /= 10;
            b /= 10;
        }
        return carries;
    }

    static void formattedPrint(int carries) {
        if (carries > 0)
            System.out.printf("%d carry operation%s.\n", carries, carries > 1 ? "s" : "");
        else
            System.out.println("No carry operation.");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int a = scanner.nextInt();
        int b = scanner.nextInt();
        while (a > 0 || b > 0) {
            int carries = totalCarries(a, b);
            formattedPrint(carries);
            a = scanner.nextInt();
            b = scanner.nextInt();
        }
        scanner.close();
    }
}
