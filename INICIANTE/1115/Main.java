import java.util.Scanner;

public class Main {

    static void formattedPrint(int x, int y) {
        if (x > 0) {
            System.out.println(y > 0 ? "primeiro" : "quarto");
        } else {
            System.out.println(y > 0 ? "segundo" : "terceiro");
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        int y = scanner.nextInt();
        while (x != 0 && y != 0) {
            formattedPrint(x, y);
            x = scanner.nextInt();
            y = scanner.nextInt();
        }
        scanner.close();
    }
}
