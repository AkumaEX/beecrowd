import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static int[] getFlights(int a, int v, Scanner scanner) {
        int[] flights = new int[a];
        while (v-- > 0) {
            flights[scanner.nextInt() - 1]++;
            flights[scanner.nextInt() - 1]++;
        }
        return flights;
    }

    static void formattedPrint(int test, int[] flights) {
        int maxFlights = Arrays.stream(flights).max().getAsInt();
        System.out.printf("Teste %d\n", test);
        for (int airport = 0; airport < flights.length; airport++)
            if (flights[airport] == maxFlights)
                System.out.printf("%d ", airport + 1);
        System.out.println("\n");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int test = 1;
        int a = scanner.nextInt();
        int v = scanner.nextInt();
        while (a > 0 || v > 0) {
            formattedPrint(test++, getFlights(a, v, scanner));
            a = scanner.nextInt();
            v = scanner.nextInt();
        }
        scanner.close();
    }
}
