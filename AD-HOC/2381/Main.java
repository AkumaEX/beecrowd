import java.util.Arrays;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int k = scanner.nextInt();
        String[] students = new String[n];
        for (int i = 0; i < n; i++)
            students[i] = scanner.next();
        Arrays.sort(students);
        System.out.println(students[k - 1]);
        scanner.close();
    }
}