import java.util.Scanner;

public class Main {

    static void printTree(int n) {
        int whitespaces = n / 2;
        int treesize = 1;
        while (treesize <= n) {
            System.out.println(" ".repeat(whitespaces) + "*".repeat(treesize));
            whitespaces--;
            treesize += 2;
        }
        whitespaces = n / 2;
        System.out.println(" ".repeat(whitespaces) + "*");
        System.out.println(" ".repeat(--whitespaces) + "***");
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int n = scanner.nextInt();
            printTree(n);
        }
        scanner.close();
    }
}
