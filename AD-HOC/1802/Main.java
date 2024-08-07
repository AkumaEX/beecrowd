import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static ArrayList<Integer> getPrices(int[] vP, int[] vM, int[] vF, int[] vQ, int[] vB) {
        ArrayList<Integer> prices = new ArrayList<Integer>();
        for (int p : vP) {
            for (int m : vM) {
                for (int f : vF) {
                    for (int q : vQ) {
                        for (int b : vB) {
                            prices.add(p + m + f + q + b);
                        }
                    }
                }
            }
        }
        return prices;
    }

    static int sumMostExpensive(int k, ArrayList<Integer> prices) {
        prices.sort(Collections.reverseOrder());
        return prices.subList(0, k).stream().mapToInt(i -> i).sum();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int p = scanner.nextInt();
        int[] vP = IntStream.range(0, p).map(i -> scanner.nextInt()).toArray();
        int m = scanner.nextInt();
        int[] vM = IntStream.range(0, m).map(i -> scanner.nextInt()).toArray();
        int f = scanner.nextInt();
        int[] vF = IntStream.range(0, f).map(i -> scanner.nextInt()).toArray();
        int q = scanner.nextInt();
        int[] vQ = IntStream.range(0, q).map(i -> scanner.nextInt()).toArray();
        int b = scanner.nextInt();
        int[] vB = IntStream.range(0, b).map(i -> scanner.nextInt()).toArray();
        int k = scanner.nextInt();
        scanner.close();

        ArrayList<Integer> prices = getPrices(vP, vM, vF, vQ, vB);
        System.out.println(sumMostExpensive(k, prices));
    }
}
