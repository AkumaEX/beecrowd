import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0) {
            int x = scanner.nextInt();
            if (x == 0) {
                System.out.println("NULL");
            } else {
                System.out.print((x & 1) == 0 ? "EVEN " : "ODD ");
                System.out.println(x < 0 ? "NEGATIVE" : "POSITIVE");
            }
        }
        scanner.close();
    }
}
