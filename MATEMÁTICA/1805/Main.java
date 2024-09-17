import java.util.Scanner;

public class Main {

    static Long sumBetween(Long a, Long b) {
        return (a + b) * (b - a + 1) / 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Long a = scanner.nextLong();
        Long b = scanner.nextLong();
        System.out.println(sumBetween(a, b));
        scanner.close();
    }
}
