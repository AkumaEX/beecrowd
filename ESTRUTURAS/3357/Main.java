import java.util.Scanner;

public class Main {

    static void printResults(int n, float l, float q, String[] participants) {
        int last = 0;
        while (l > q) {
            l -= q;
            last++;
        }
        System.out.printf("%s %.1f\n", participants[last % n], l);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        float l = scanner.nextFloat();
        float q = scanner.nextFloat();
        String[] participants = new String[n];
        for (int i = 0; i < n; i++)
            participants[i] = scanner.next();
        printResults(n, l, q, participants);
        scanner.close();
    }
}
