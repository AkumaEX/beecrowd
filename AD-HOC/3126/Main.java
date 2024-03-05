import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numAttended = 0;
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++)
            numAttended += scanner.nextInt();
        System.out.println(numAttended);
        scanner.close();
    }
}
