import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int maxSequence = 1;
        int n = scanner.nextInt();
        int previous = scanner.nextInt();
        for (int i = 1; i < n; i++) {
            int next = scanner.nextInt();
            if (previous != next)
                maxSequence++;
            previous = next;
        }
        System.out.println(maxSequence);
        scanner.close();
    }
}
