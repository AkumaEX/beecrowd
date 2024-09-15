import java.util.Scanner;

public class Main {

    static int sumBetween(int x, int y) {
        if (x > y) {
            int temp = x;
            x = y;
            y = temp;
        }
        int sum = 0;
        for (int n = x; n <= y; n++) {
            if (n % 13 != 0)
                sum += n;
        }
        return sum;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        int y = scanner.nextInt();
        System.out.println(sumBetween(x, y));
        scanner.close();
    }
}
