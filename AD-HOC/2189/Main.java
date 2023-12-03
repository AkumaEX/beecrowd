import java.util.Scanner;

public class Main {

    static int getWinner(int n, Scanner scanner) {
        int winner = 0;
        for (int participant = 1; participant <= n; participant++)
            if (participant == scanner.nextInt())
                winner = participant;
        return winner;
    }

    static void printFormatted(int test, int winner) {
        System.out.printf("Teste %d\n%d\n\n", test, winner);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        for (int test = 1; (n = scanner.nextInt()) > 0; test++) {
            int winner = getWinner(n, scanner);
            printFormatted(test, winner);
        }
        scanner.close();
    }
}