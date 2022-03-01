
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class Main {

    public static int lis(List<Integer> a, List<Integer> b) {
        if (!a.isEmpty() && b.isEmpty())
            return 1;
        if (a.isEmpty())
            return 0;
        if (a.get(0) == b.get(0))
            return 1 + lis(b.subList(1, b.size()), a.subList(1, a.size()));
        if (a.get(0) < b.get(0))
            return 1 + lis(b, a.subList(1, a.size()));
        return lis(a, b.subList(1, b.size()));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            Map<Integer, List<Integer>> yAx = new HashMap<Integer, List<Integer>>();
            List<Integer> points = new ArrayList<Integer>();
            int n = scanner.nextInt();
            scanner.nextLine();
            for (int i = 0; i < n; i++) {
                String[] point = scanner.nextLine().split(" ");
                int x = Integer.parseInt(point[0]);
                int y = Integer.parseInt(point[1]);
                yAx.computeIfAbsent(y, k -> new ArrayList<Integer>()).add(x);
            }
            for (Integer y : yAx.keySet()) {
                List<Integer> x_up = yAx.get(y);
                List<Integer> x_down = yAx.getOrDefault(y - 2, new ArrayList<Integer>());
                x_up.sort(null);
                x_down.sort(null);
                points.add(lis(x_up, x_down));
                points.add(lis(x_down, x_up));
            }
            System.out.println(Collections.max(points));
        }
        scanner.close();
    }
}