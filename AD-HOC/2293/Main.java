import java.util.Scanner;

public class Main {

    static int[][] getField(int n, int m, Scanner scanner) {
        int[][] field = new int[n][m];
        for (int i = 0; i < n; i++)
            for (int j = 0; j < m; j++)
                field[i][j] = scanner.nextInt();
        return field;
    }

    static int getMaxWorms(int n, int m, int[][] field) {
        int maxWorms = 0;
        for (int i = 0; i < n; i++) {
            int worms = 0;
            for (int j = 0; j < m; j++)
                worms += field[i][j];
            if (worms > maxWorms)
                maxWorms = worms;
        }
        for (int j = 0; j < m; j++) {
            int worms = 0;
            for (int i = 0; i < n; i++)
                worms += field[i][j];
            if (worms > maxWorms)
                maxWorms = worms;
        }
        return maxWorms;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int m = scanner.nextInt();
        System.out.println(getMaxWorms(n, m, getField(n, m, scanner)));
        scanner.close();
    }
}
