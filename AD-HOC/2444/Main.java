import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int v = scanner.nextInt();
        int t = scanner.nextInt();
        for (int i = 0; i < t; i++) {
            v += scanner.nextInt();
            if (v < 0)
                v = 0;
            else if (v > 100)
                v = 100;
        }
        System.out.println(v);
        scanner.close();
    }
}
