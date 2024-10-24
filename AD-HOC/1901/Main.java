import java.util.HashSet;
import java.util.Scanner;

public class Main {

    static int[][] getForest(int n, Scanner scanner) {
        int[][] forest = new int[n][n];
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                forest[i][j] = scanner.nextInt();
        return forest;
    }

    static int numButterflies(int n, int[][] forest, Scanner scanner) {
        HashSet<Integer> butterflies = new HashSet<Integer>();
        while (n-- > 0) {
            int x = scanner.nextInt();
            int y = scanner.nextInt();
            butterflies.add(forest[x - 1][y - 1]);
        }
        return butterflies.size();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        System.out.println(numButterflies(2 * n, getForest(n, scanner), scanner));
        scanner.close();
    }
}
