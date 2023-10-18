import java.util.Scanner;

public class Main {

    static String winner(int x, int y) {
        double rafael = Math.pow(3 * x, 2) + Math.pow(y, 2);
        double beto = 2 * Math.pow(x, 2) + Math.pow(5 * y, 2);
        double carlos = -100 * x + Math.pow(y, 3);

        if (rafael > beto && rafael > carlos)
            return "Rafael";
        else if (beto > rafael && beto > carlos)
            return "Beto";
        return "Carlos";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            int x = scanner.nextInt();
            int y = scanner.nextInt();
            System.out.printf("%s ganhou\n", winner(x, y));
        }
        scanner.close();
    }
}