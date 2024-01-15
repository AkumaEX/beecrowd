import java.util.Scanner;

public class Main {
    static boolean singleExchange(int m, String sequence) {
        int differences = 0;
        for (int i = 0; i < m; i++) {
            if (sequence.charAt(i) != "ABCDEFGHIJKLMNOPQRSTUVWXYZ".charAt(i)) {
                differences++;
                if (differences > 2)
                    return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            int m = scanner.nextInt();
            String sequence = scanner.next();
            System.out.println(singleExchange(m, sequence) ? "There are the chance." : "There aren't the chance.");
        }
        scanner.close();
    }
}
