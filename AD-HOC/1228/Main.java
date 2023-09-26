import java.util.Scanner;
import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            ArrayList<Integer> start = new ArrayList<Integer>();
            for (int i = 0; i < n; i++)
                start.add(scanner.nextInt());
            ArrayList<Integer> finish = new ArrayList<Integer>();
            for (int i = 0; i < n; i++)
                finish.add(scanner.nextInt());
            int overtakes = 0;
            for (int position = 0; position < n; position++) {
                if (finish.get(position) != start.get(position)) {
                    int before = start.indexOf(finish.get(position));
                    start.add(position, start.remove(before));
                    overtakes += before - position;
                }
            }
            System.out.println(overtakes);
        }
        scanner.close();
    }
}
