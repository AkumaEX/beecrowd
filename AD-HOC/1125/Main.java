import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    static int[] getScore(int g, int p, int[][] grandPrix, int[] rule) {
        int[] scores = new int[p];
        for (int result = 0; result < g; result++) {
            for (int driver = 0; driver < p; driver++) {
                int position = grandPrix[result][driver];
                if (position < rule.length + 1)
                    scores[driver] += rule[position - 1];
            }
        }
        return scores;
    }

    static ArrayList<Integer> getWinner(int[] scores) {
        int max_score = 0;
        for (int i = 0; i < scores.length; i++)
            if (scores[i] > max_score)
                max_score = scores[i];
        ArrayList<Integer> winner = new ArrayList<>();
        for (int i = 0; i < scores.length; i++)
            if (scores[i] == max_score)
                winner.add(i + 1);
        return winner;
    }

    static void printResults(ArrayList<Integer> winner) {
        int n = winner.size() - 1;
        for (int i = 0; i < n; i++)
            System.out.printf("%d ", winner.get(i));
        System.out.println(winner.get(n));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int g = scanner.nextInt();
        int p = scanner.nextInt();
        while (g != 0 && p != 0) {
            int[][] grandPrix = new int[g][p];
            for (int i = 0; i < g; i++)
                for (int j = 0; j < p; j++)
                    grandPrix[i][j] = scanner.nextInt();
            int s = scanner.nextInt();
            for (int i = 0; i < s; i++) {
                int k = scanner.nextInt();
                int[] rule = new int[k];
                for (int j = 0; j < k; j++)
                    rule[j] = scanner.nextInt();
                int[] scores = getScore(g, p, grandPrix, rule);
                printResults(getWinner(scores));
            }
            g = scanner.nextInt();
            p = scanner.nextInt();
        }
        scanner.close();
    }
}
