import java.util.Scanner;

public class Main {

    static int[] getTable(int n, Scanner scanner) {
        int[] table = new int[n];
        for (int i = 0; i < n; i++)
            table[i] = scanner.nextInt();
        return table;
    }

    static int[] minesFrom(int[] table, int n) {
        int[] mines = new int[n];
        for (int i = 0; i < n; i++) {
            mines[i] = table[i];
            if (i - 1 >= 0)
                mines[i] += table[i - 1];
            if (i + 1 < n)
                mines[i] += table[i + 1];
        }
        return mines;
    }

    static void formattedPrint(int[] mines) {
        for (int mine : mines)
            System.out.println(mine);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int[] table = getTable(n, scanner);
        int[] mines = minesFrom(table, n);
        formattedPrint(mines);
        scanner.close();
    }
}
