import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            String seq = scanner.next();
            int digit1 = seq.charAt(0) - '0';
            char letter = seq.charAt(1);
            int digit2 = seq.charAt(2) - '0';
            if (digit2 == digit1) {
                System.out.println(digit2 * digit1);
            } else if (Character.isUpperCase(letter)) {
                System.out.println(digit2 - digit1);
            } else {
                System.out.println(digit2 + digit1);
            }
        }
        scanner.close();
    }
}
