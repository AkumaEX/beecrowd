import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    static ArrayList<Integer> getRegions(int n) {
        ArrayList<Integer> regions = new ArrayList<Integer>();
        for (int i = 1; i <= n; regions.add(i), i++);
        return regions;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) != 0) {
            for (int m = 1; m > 0; m++) {
                ArrayList<Integer> regions = getRegions(n);
                int selected = 0;
                while (regions.size() > 1) {
                    int region = regions.remove(selected);
                    if (region == 13)
                        break;
                    selected = (selected + m - 1) % regions.size();
                }
                if (regions.get(0) == 13) {
                    System.out.println(m);
                    break;
                }
            }
        }
        scanner.close();
    }
}
