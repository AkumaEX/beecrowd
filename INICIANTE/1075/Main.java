import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int num = 1; num < 10000; num++) {
            if (num % n == 2)
                System.out.println(num);
        }
        scanner.close();
    }
}
