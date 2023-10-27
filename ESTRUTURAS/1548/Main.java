import java.util.Scanner;
import java.util.Arrays;
import java.util.Comparator;

public class Main {

    static int numSamePlace(Scanner scanner) {
        int m = scanner.nextInt();
        int[] p = new int[m];
        Integer[] pSorted = new Integer[m];
        for (int i = 0; i < m; i++)
            p[i] = pSorted[i] = scanner.nextInt();
        Arrays.sort(pSorted, Comparator.reverseOrder());
        int samePlace = 0;
        for (int i = 0; i < m; i++)
            if (p[i] == pSorted[i])
                samePlace++;
        return samePlace;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++)
            System.out.println(numSamePlace(scanner));
        scanner.close();
    }
}