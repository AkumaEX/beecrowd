import java.util.Scanner;

public class Main {

    static boolean fits(int r, int w, int l) {
        return Math.pow(r, 2) >= Math.pow((float) w / 2, 2) + Math.pow(((float) l / 2), 2);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int r = scanner.nextInt();
        for (int pizza = 1; r > 0; pizza++) {
            int w = scanner.nextInt();
            int l = scanner.nextInt();
            System.out.printf("Pizza %d %s\n", pizza, fits(r, w, l) ? "fits on the table." : "does not fit on the table.");
            r = scanner.nextInt();
        }
        scanner.close();
    }
}
