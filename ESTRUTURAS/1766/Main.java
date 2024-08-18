import java.util.ArrayList;
import java.util.Comparator;
import java.util.Scanner;

public class Main {

    static ArrayList<Object[]> getReindeers(int n, Scanner scanner) {
        ArrayList<Object[]> reindeers = new ArrayList<Object[]>();
        while (n-- > 0) {
            Object[] reindeer = new Object[5];
            reindeer[0] = scanner.next();
            reindeer[1] = scanner.nextInt();
            reindeer[2] = scanner.nextInt();
            reindeer[3] = scanner.nextDouble();
            reindeers.add(reindeer);
        }
        reindeers.sort(Comparator.<Object[]>comparingInt(reindeer -> -(int) reindeer[1])
                .thenComparingInt(reindeer -> (int) reindeer[2]).thenComparingDouble(reindeer -> (double) reindeer[3])
                .thenComparing(reindeer -> (String) reindeer[0]));
        return reindeers;
    }

    static void formattedPrint(int scenario, int m, ArrayList<Object[]> reindeers) {
        System.out.printf("CENARIO {%d}\n", scenario);
        for (int i = 0; i < m; i++)
            System.out.printf("%d - %s\n", i + 1, reindeers.get(i)[0]);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int scenario = 1; scenario < t + 1; scenario++) {
            int n = scanner.nextInt();
            int m = scanner.nextInt();
            ArrayList<Object[]> reindeers = getReindeers(n, scanner);
            formattedPrint(scenario, m, reindeers);
        }
        scanner.close();
    }
}
