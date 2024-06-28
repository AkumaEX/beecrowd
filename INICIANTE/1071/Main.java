import java.util.Scanner;

public class Main {

    static int evensTotal(int x, int y) {
        int total = 0;
        for (int num = x; num < y; num++)
            if (Math.floorMod(num, 2) == 1)
                total += num;
        return total;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        int y = scanner.nextInt();
        if (x < y) {
            x = x + 1;
        } else {
            int temp = x;
            x = y + 1;
            y = temp;
        }
        System.out.println(evensTotal(x, y));
        scanner.close();
    }
}
