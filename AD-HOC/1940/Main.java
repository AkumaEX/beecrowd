import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static List<Integer> getTotal(int j, int[] scores) {
        List<Integer> total = new ArrayList<Integer>();
        int i = 0;
        for (int score : scores)
            total.add(i++ % j, score);
        return total;
    }

    static int getWinner(List<Integer> total) {
        int maxScore = Collections.max(total);
        return total.lastIndexOf(maxScore) + 1;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int j = scanner.nextInt();
        int r = scanner.nextInt();
        int[] scores = IntStream.range(0, j * r).map(i -> scanner.nextInt()).toArray();
        List<Integer> total = getTotal(j, scores);
        System.out.println(getWinner(total));
        scanner.close();
    }
}
