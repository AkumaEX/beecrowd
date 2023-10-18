import java.util.Scanner;

public class Main {

    static int decimal(int acm) {
        int[] factorial = { 1, 1, 2, 6, 24, 120 };
        int result = 0;
        for (int i = 1; acm > 0; acm /= 10, i++) {
            int digit = acm % 10;
            result += digit * factorial[i];
        }
        return result;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int acm;
        while ((acm = scanner.nextInt()) > 0)
            System.out.println(decimal(acm));
        scanner.close();
    }
}
