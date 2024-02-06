import java.util.Scanner;

public class Main {

    static int getCategory(int k) {
        for (int category : new int[] { 1, 3, 5, 10, 25, 50, 100 })
            if (k <= category)
                return category;
        return 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int k = scanner.nextInt();
        System.out.printf("Top %d\n", getCategory(k));
        scanner.close();
    }
}
