import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {
    static void update(int[] desks, int a, int b) {
        int temp = desks[a];
        desks[a] = desks[b];
        desks[b] = temp;
    }

    static int query(int[] desks, int employee, int a) {
        if (employee == a)
            return 0;
        return 1 + query(desks, desks[employee], a);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int q = scanner.nextInt();

        int[] desks = IntStream.range(0, n).toArray();
        for (int times = 0; times < q; times++) {
            int e = scanner.nextInt();
            int a = scanner.nextInt() - 1;
            if (e == 1) {
                int b = scanner.nextInt() - 1;
                update(desks, a, b);
            } else {
                System.out.println(query(desks, desks[a], a));
            }
        }
        scanner.close();
    }
}