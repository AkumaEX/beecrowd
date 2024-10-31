import java.util.Scanner;

public class Main {

    static int maxOf(int h) {
        int maxValue = h;
        while (h != 1) {
            h = h % 2 != 0 ? 3 * h + 1 : h / 2;
            if (h > maxValue)
                maxValue = h;
        }
        return maxValue;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int h;
        while ((h = scanner.nextInt()) != 0)
            System.out.println(maxOf(h));
        scanner.close();
    }
}
