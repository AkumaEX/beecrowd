import java.util.Map;
import java.util.Scanner;

public class Main {

    static int elapsed(int fromDay, int fromMonth, int toDay, int toMonth) {
        Map<Integer, Integer> days = Map.ofEntries(Map.entry(1, 31), Map.entry(2, 28), Map.entry(3, 31),
                Map.entry(4, 30), Map.entry(5, 31), Map.entry(6, 30), Map.entry(7, 31), Map.entry(8, 31),
                Map.entry(9, 30), Map.entry(10, 31), Map.entry(11, 30), Map.entry(12, 31));
        int total = toDay - fromDay;
        for (int month = fromMonth; month < toMonth; month++)
            total += days.get(month);
        return total;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int fromDay = scanner.nextInt();
        int fromMonth = scanner.nextInt();
        int toDay = scanner.nextInt();
        int toMonth = scanner.nextInt();
        System.out.println(elapsed(fromDay, fromMonth, toDay, toMonth));
        scanner.close();
    }
}
