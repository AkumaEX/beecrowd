import java.util.Scanner;

public class Main {

    static void printValues(int v, int p) {
        int value = v / p;
        int adjustment = v % p;
        for (int i = 0; i < p; i++)
            System.out.println(i < adjustment ? value + 1 : value);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int v = scanner.nextInt();
        int p = scanner.nextInt();
        printValues(v, p);
        scanner.close();
    }
}
