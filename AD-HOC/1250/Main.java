import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int i = 0; i < n; i++) {
            int t = scanner.nextInt();
            int[] shoot = new int[t];
            for (int j = 0; j < t; j++)
                shoot[j] = scanner.nextInt();
            String[] jump = scanner.next().split("");
            int hit = 0;
            for (int j = 0; j < t; j++)
                if (shoot[j] > 2 && jump[j].equals("J") || shoot[j] < 3 && jump[j].equals("S"))
                    hit++;
            System.out.println(hit);
        }
        scanner.close();
    }
}
