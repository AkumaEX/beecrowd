import java.util.HashMap;
import java.util.Scanner;

public class Main {

    static HashMap<Integer, HashMap<String, Integer>> getPairs(int n, Scanner scanner) {
        HashMap<Integer, HashMap<String, Integer>> pairs = new HashMap<Integer, HashMap<String, Integer>>();
        while (n-- > 0) {
            int m = scanner.nextInt();
            String l = scanner.next();
            if (!pairs.containsKey(m)) {
                pairs.put(m, new HashMap<String, Integer>());
                pairs.get(m).put("E", 0);
                pairs.get(m).put("D", 0);
            }
            pairs.get(m).put(l, pairs.get(m).get(l) + 1);
        }
        return pairs;
    }

    static int getTotal(HashMap<Integer, HashMap<String, Integer>> pairs) {
        int total = 0;
        for (HashMap<String, Integer> pair : pairs.values())
            total += Math.min(pair.get("E"), pair.get("D"));
        return total;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            HashMap<Integer, HashMap<String, Integer>> pairs = getPairs(n, scanner);
            System.out.println(getTotal(pairs));
        }
        scanner.close();
    }
}
