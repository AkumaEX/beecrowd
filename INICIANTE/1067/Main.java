import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        for (int number = 1; number <= x; number += 2)
            System.out.println(number);
        scanner.close();
    }
}
