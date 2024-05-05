import java.util.TreeMap;
import java.util.List;
import java.util.Scanner;

public class Main {

    static TreeMap<Integer, Integer> timeResults(int n, int m, Scanner scanner) {
        TreeMap<Integer, Integer> results = new TreeMap<Integer, Integer>();
        for (int car = 1; car <= n; car++) {
            int time = 0;
            for (int lap = 0; lap < m; lap++)
                time += scanner.nextInt();
            results.put(time, car);
        }
        return results;
    }

    static void printSorted(TreeMap<Integer, Integer> results) {
        List<Integer> top = results.keySet().stream().limit(3).toList();
        System.out.println(results.get(top.get(0)));
        System.out.println(results.get(top.get(1)));
        System.out.println(results.get(top.get(2)));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int m = scanner.nextInt();
        printSorted(timeResults(n, m, scanner));
        scanner.close();
    }
}
