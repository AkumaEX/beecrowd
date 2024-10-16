import java.util.Scanner;
import java.util.TreeMap;

public class Main {

    static TreeMap<String, Integer> getTrees(Scanner scanner) {
        TreeMap<String, Integer> trees = new TreeMap<String, Integer>();
        while (scanner.hasNext()) {
            String tree = scanner.nextLine().trim();
            if (tree.isEmpty())
                break;
            trees.put(tree, trees.getOrDefault(tree, 0) + 1);
        }
        return trees;
    }

    static void formattedPrint(int c, TreeMap<String, Integer> trees) {
        if (c > 0)
            System.out.println();
        int total = trees.values().stream().reduce(0, Integer::sum);
        for (String tree : trees.keySet()) {
            System.out.printf("%s %.4f\n", tree, 100.0 * trees.get(tree) / total);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        scanner.nextLine();
        scanner.nextLine();
        for (int c = 0; c < n; c++) {
            formattedPrint(c, getTrees(scanner));
        }
        scanner.close();
    }
}
