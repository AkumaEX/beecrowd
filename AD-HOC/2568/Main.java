import java.util.Scanner;

public class Main {

    static int predict(int d, int i, int x, int f) {
        if (d % 2 == 0)
            return i - (f % 2) * x;
        return i + (f % 2) * x;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int d = scanner.nextInt();
        int i = scanner.nextInt();
        int x = scanner.nextInt();
        int f = scanner.nextInt();
        System.out.println(predict(d, i, x, f));
        scanner.close();
    }
}
