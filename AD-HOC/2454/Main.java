import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int p = scanner.nextInt();
        int r = scanner.nextInt();
        if (p == 0)
            System.out.println('C');
        else if (r == 0)
            System.out.println('B');
        else
            System.out.println('A');
        scanner.close();
    }
}