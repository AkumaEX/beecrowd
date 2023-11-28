import java.util.HashSet;
import java.util.Scanner;

public class Main {

    static int moves(int a, Scanner scanner) {
        HashSet<HashSet<Integer>> edges = new HashSet<HashSet<Integer>>();
        for (int times = 0; times < a; times++) {
            HashSet<Integer> edge = new HashSet<Integer>();
            edge.add(scanner.nextInt());
            edge.add(scanner.nextInt());
            edges.add(edge);
        }
        return 2 * edges.size();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int t = scanner.nextInt();
        for (int times = 0; times < t; times++) {
            scanner.nextInt();
            scanner.nextInt();
            int a = scanner.nextInt();
            System.out.println(moves(a, scanner));
        }
        scanner.close();
    }
}