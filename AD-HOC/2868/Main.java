import java.util.Scanner;

public class Main {

    static int eval(int a, String operator, int b) {
        if (operator.equals("+"))
            return a + b;
        if (operator.equals("-"))
            return a - b;
        return a * b;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        for (int times = 0; times < c; times++) {
            int a = scanner.nextInt();
            String operator = scanner.next("[+-x]");
            int b = scanner.nextInt();
            scanner.next("=");
            int result = scanner.nextInt();
            int difference = Math.abs(eval(a, operator, b) - result);
            System.out.println("E" + "r".repeat(difference) + "ou!");
        }
        scanner.close();
    }
}
