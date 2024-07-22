import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            long hashmat = scanner.nextLong();
            long opponent = scanner.nextLong();
            System.out.println(hashmat > opponent ? hashmat - opponent : opponent - hashmat);
        }
        scanner.close();
    }
}
