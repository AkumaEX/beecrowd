import java.util.Scanner;

public class Main {

    static int biggerSize(int b, int t) {
        int size = b + t;
        if (size > 160)
            return 1;
        if (size < 160)
            return 2;
        return 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int b = scanner.nextInt();
        int t = scanner.nextInt();
        System.out.println(biggerSize(b, t));
        scanner.close();
    }
}
