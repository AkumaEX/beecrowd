import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = Integer.parseInt(scanner.nextLine().trim());
        while (n > 0) {
            int tries = 0;
            String[] line;
            while ((line = scanner.nextLine().trim().split(" ")).length > 1)
                tries++;
            System.out.println(tries);
            n = Integer.parseInt(line[0]);
        }
        scanner.close();
    }
}