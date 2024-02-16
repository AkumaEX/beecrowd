import java.util.Scanner;

public class Main {

    static boolean fits(int[] x, int[] y) {
        for (int i = 0; i < 5; i++)
            if (x[i] + y[i] != 1)
                return false;
        return true;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] x = new int[5];
        int[] y = new int[5];
        for (int i = 0; i < 5; i++)
            x[i] = scanner.nextInt();
        for (int i = 0; i < 5; i++)
            y[i] = scanner.nextInt();
        System.out.println(fits(x, y) ? 'Y' : 'N');
        scanner.close();
    }
}
