import java.util.Scanner;

public class Main {

    static String moonStage(int before, int after) {
        if (after < 3)
            return "nova";
        if (after > 96)
            return "cheia";
        if (after > before)
            return "crescente";
        return "minguante";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int before = scanner.nextInt();
        int after = scanner.nextInt();
        System.out.println(moonStage(before, after));
        scanner.close();
    }
}
