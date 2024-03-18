import java.util.Scanner;

public class Main {

    static int scoredAllMatches(int m, int[] x) {
        for (int i = 0; i < m; i++)
            if (x[i] == 0)
                return 0;
        return 1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int players = 0;
        int n = scanner.nextInt();
        int m = scanner.nextInt();
        int[] x = new int[m];
        for (int player = 0; player < n; player++) {
            for (int i = 0; i < m; i++)
                x[i] = scanner.nextInt();
            players += scoredAllMatches(m, x);
        }
        System.out.println(players);
        scanner.close();
    }
}