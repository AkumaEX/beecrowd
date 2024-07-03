import java.util.Scanner;

public class Main {

    static void formattedPrint(int c, String x, String y) {
        System.out.printf("Case %d:\n", c);
        if (y.equals("bin")) {
            int integer = Integer.parseInt(x, 2);
            System.out.println(integer + " dec");
            System.out.println(Integer.toHexString(integer) + " hex");
        } else if (y.equals("hex")) {
            int integer = Integer.parseInt(x, 16);
            System.out.println(integer + " dec");
            System.out.println(Integer.toBinaryString(integer) + " bin");
        } else {
            int integer = Integer.parseInt(x);
            System.out.println(Integer.toHexString(integer) + " hex");
            System.out.println(Integer.toBinaryString(integer) + " bin");
        }
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int c = 1; c <= n; c++) {
            String x = scanner.next();
            String y = scanner.next();
            formattedPrint(c, x, y);
        }
        scanner.close();
    }
}
