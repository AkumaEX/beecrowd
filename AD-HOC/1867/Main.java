import java.util.Scanner;

public class Main {

    static String transform(String number) {
        while (number.length() > 1)
            number = String.valueOf(number.chars().reduce(0, (a, b) -> a + b - '0'));
        return number;
    }

    static int compare(String m, String n) {
        if (Integer.valueOf(m) > Integer.valueOf(n))
            return 1;
        if (Integer.valueOf(m) < Integer.valueOf(n))
            return 2;
        return 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String m = scanner.next();
        String n = scanner.next();
        while (!m.equals("0") || !n.equals("0")) {
            System.out.println(compare(transform(m), transform(n)));
            m = scanner.next();
            n = scanner.next();
        }
        scanner.close();
    }
}
