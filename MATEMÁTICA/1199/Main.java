import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (true) {
            String number = scanner.next();
            if (number.contains("x")) {
                System.out.println(Integer.decode(number));
            } else {
                Integer integer = Integer.valueOf(number);
                if (integer > -1) System.out.printf("0x%s\n", Integer.toHexString(integer).toUpperCase());
                else break;
            }
        }
        scanner.close();
    }
}
