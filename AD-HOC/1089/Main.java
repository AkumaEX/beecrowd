import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n != 0) {
            int[] h = new int[n];
            for (int i = 0; i < n; i++) {
                h[i] = scanner.nextInt();
            }
            Boolean[] directions = new Boolean[n];
            for (int i = 0; i < n; i++) {
                Boolean isAscending = (h[(i + 1) % n] - h[i]) > 0;
                directions[i] = isAscending;
            }
            int peaks = 0;
            for (int i = 0; i < n; i++) {
                Boolean directionChange = directions[(i + 1) % n] != directions[i];
                if (directionChange)
                    peaks += 1;
            }
            System.out.println(peaks);
            n = scanner.nextInt();
        }
        scanner.close();
    }
}
