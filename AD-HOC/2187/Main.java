import java.util.Scanner;

public class Main {

    static int[] withdraw(int bits) {
        int[] bills = { 0, 0, 0, 0 };
        bills[0] = bits / 50;
        bits %= 50;
        bills[1] = bits / 10;
        bits %= 10;
        bills[2] = bits / 5;
        bills[3] = bits % 5;
        return bills;
    }

    static void printFormatted(int test, int[] bills) {
        System.out.printf("Teste %d\n", test);
        System.out.println(bills[0] + " " + bills[1] + " " + bills[2] + " " + bills[3]);
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int v, test = 1;
        while ((v = scanner.nextInt()) > 0) {
            int[] bills = withdraw(v);
            printFormatted(test, bills);
            test++;
        }
        scanner.close();
    }
}
