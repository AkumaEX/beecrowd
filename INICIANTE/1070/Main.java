import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x = scanner.nextInt();
        x = x + 1 - x % 2;
        for (int odd = x; odd < x + 11; odd += 2)
            System.out.println(odd);
        scanner.close();
    }
}
