import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        int[] num_leds = { 6, 2, 5, 5, 4, 5, 6, 3, 7, 6 };
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            int total = 0;
            String num = scanner.next();
            for (int j = 0; j < num.length(); j++) {
                int digit = num.charAt(j) - '0';
                total += num_leds[digit];
            }
            System.out.printf("%d leds\n", total);
        }
        scanner.close();
    }
}
