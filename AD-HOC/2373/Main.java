import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int total = 0;
        int n = scanner.nextInt();
        for (int tray = 0; tray < n; tray++) {
            int l = scanner.nextInt();
            int c = scanner.nextInt();
            total += l > c ? c : 0;
        }
        System.out.println(total);
        scanner.close();
    }
}
