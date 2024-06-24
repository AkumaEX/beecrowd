import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static int[] getBooks(int n, Scanner scanner) {
        int[] books = new int[n];
        for (int i = 0; i < n; i++)
            books[i] = scanner.nextInt();
        Arrays.sort(books);
        return books;
    }

    static void formattedPrint(int[] books) {
        for (int book : books)
            System.out.printf("%04d\n", book);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            int[] books = getBooks(n, scanner);
            formattedPrint(books);
        }
        scanner.close();
    }
}
