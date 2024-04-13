import java.util.Scanner;

public class Main {

    static Long quantity(Long n) {
        return (n - 3) + (n - 2) * (n - 3) / 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Long n = scanner.nextLong();
        System.out.println(quantity(n));
        scanner.close();
    }
}
