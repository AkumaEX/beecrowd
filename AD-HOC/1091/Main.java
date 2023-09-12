import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int k = scanner.nextInt();
        while (k != 0) {
            int n = scanner.nextInt();
            int m = scanner.nextInt();
            for (int i = 0; i < k; i++) {
                int x = scanner.nextInt();
                int y = scanner.nextInt();
                if (x == n || y == m)
                    System.out.println("divisa");
                else if (x < n)
                    if (y < m)
                        System.out.println("SO");
                    else
                        System.out.println("NO");
                else if (y < m)
                    System.out.println("SE");
                else
                    System.out.println("NE");
            }
            k = scanner.nextInt();
        }
        scanner.close();
    }
}