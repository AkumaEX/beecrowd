import java.util.Map;
import java.util.Scanner;

public class Main {

    static Map<String, Integer> addition(int n1, int d1, int n2, int d2) {
        return Map.of("nl", n1 * d2 + n2 * d1, "dl", d1 * d2);
    }

    static Map<String, Integer> substraction(int n1, int d1, int n2, int d2) {
        return Map.of("nl", n1 * d2 - n2 * d1, "dl", d1 * d2);
    }

    static Map<String, Integer> multiplication(int n1, int d1, int n2, int d2) {

        return Map.of("nl", n1 * n2, "dl", d1 * d2);
    }

    static Map<String, Integer> division(int n1, int d1, int n2, int d2) {
        return Map.of("nl", n1 * d2, "dl", n2 * d1);
    }

    static Map<String, Integer> simplify(int nl, int dl) {
        int smaller = Math.abs(nl) < Math.abs(dl) ? Math.abs(nl) : Math.abs(dl);
        for (int i = smaller; i > 0; i--)
            if ((nl % i == 0) && (dl % i == 0))
                return Map.of("nr", nl / i, "dr", dl / i);
        return Map.of("nr", nl, "dr", dl);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        for (int i = 0; i < n; i++) {
            String[] expression = scanner.nextLine().split(" ");
            int n1 = Integer.parseInt(expression[0]);
            int d1 = Integer.parseInt(expression[2]);
            String op = expression[3];
            int n2 = Integer.parseInt(expression[4]);
            int d2 = Integer.parseInt(expression[6]);
            Map<String, Integer> result, simple;
            switch (op) {
                case "+":
                    result = addition(n1, d1, n2, d2);
                    break;
                case "-":
                    result = substraction(n1, d1, n2, d2);
                    break;
                case "*":
                    result = multiplication(n1, d1, n2, d2);
                    break;
                default:
                    result = division(n1, d1, n2, d2);
            }
            simple = simplify(result.get("nl"), result.get("dl"));
            System.out.printf("%d/%d = %d/%d\n", result.get("nl"), result.get("dl"), simple.get("nr"),
                    simple.get("dr"));
        }
        scanner.close();
    }
}
