import java.util.Scanner;

public class Main {

    static int getLines(int n, String[] lines, Scanner scanner) {
        int maxSize = 0;
        for (int i = 0; i < n; i++) {
            lines[i] = scanner.nextLine().strip().replaceAll("\s+", " ");
            if (lines[i].length() > maxSize)
                maxSize = lines[i].length();
        }
        return maxSize;
    }

    static void formattedPrint(String[] lines, int maxSize) {
        for (String line : lines)
            System.out.format("%" + maxSize + "s\n", line);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n > 0) {
            scanner.nextLine();
            String[] lines = new String[n];
            int maxSize = getLines(n, lines, scanner);
            formattedPrint(lines, maxSize);
            if ((n = scanner.nextInt()) > 0)
                System.out.println();
        }
        scanner.close();
    }
}
