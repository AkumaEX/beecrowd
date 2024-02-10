import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        for (int experiment = 1; (n = scanner.nextInt()) > -1; experiment++)
            System.out.printf("Experiment %d: %d full cycle(s)\n", experiment, n / 2);

        scanner.close();
    }
}
