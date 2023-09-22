import java.util.Scanner;
import java.util.TreeMap;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        TreeMap<Integer, Integer> count = new TreeMap<Integer, Integer>();
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            int num = scanner.nextInt();
            if (count.containsKey(num))
                count.put(num, count.get(num) + 1);
            else
                count.put(num, 1);
        }
        for (Integer num : count.keySet())
            System.out.printf("%d aparece %d vez(es)\n", num, count.get(num));
        scanner.close();
    }
}