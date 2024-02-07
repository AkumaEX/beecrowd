import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] scores = new int[3];
        for (int i = 0; i < 3; i++)
            scores[i] = scanner.nextInt();
        Arrays.sort(scores);
        System.out.println(scores[1]);
        scanner.close();
    }
}
