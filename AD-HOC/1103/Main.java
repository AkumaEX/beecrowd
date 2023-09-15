import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int h1 = scanner.nextInt();
        int m1 = scanner.nextInt();
        int h2 = scanner.nextInt();
        int m2 = scanner.nextInt();
        while (h1 != 0 || m1 != 0 || h2 != 0 || m2 != 0) {
            if (m2 < m1) {
                h2 -= 1;
                m2 += 60;
            }
            int minutes = m2 - m1;
            if (h2 < h1)
                h2 += 24;
            minutes += (h2 - h1) * 60;
            System.out.println(minutes);
            h1 = scanner.nextInt();
            m1 = scanner.nextInt();
            h2 = scanner.nextInt();
            m2 = scanner.nextInt();
        }
        scanner.close();
    }
}