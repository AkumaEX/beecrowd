import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) != 0) {
            int john = 0;
            for (int i = 0; i < n; i++)
                john += scanner.nextInt();
            int mary = n - john;
            System.out.printf("Mary won %d times and John won %d times\n", mary, john);
        }
        scanner.close();
    }
}
