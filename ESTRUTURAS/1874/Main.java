import java.util.LinkedList;
import java.util.Scanner;

public class Main {

    static int[][] getCells(int h, int p, Scanner scanner) {
        int[][] cells = new int[h][p];
        for (int line = 0; line < h; line++)
            for (int column = 0; column < p; column++)
                cells[line][column] = scanner.nextInt();
        return cells;
    }

    static LinkedList<int[]> getVacantSpaces(int h, int p, int[][] cells) {
        LinkedList<int[]> vacantSpaces = new LinkedList<int[]>();
        for (int column = p - 1; column >= 0; column--)
            for (int line = h - 1; line >= 0; line--)
                if (cells[line][column] < 1) {
                    int[] position = { line, column };
                    vacantSpaces.add(position);
                }
        return vacantSpaces;
    }

    static void insertNewBlocks(int f, int[][] cells, LinkedList<int[]> vacantSpaces, Scanner scanner) {
        for (int i = 0; i < f; i++) {
            int block = scanner.nextInt();
            if (!vacantSpaces.isEmpty()) {
                int[] position = vacantSpaces.removeFirst();
                cells[position[0]][position[1]] = block;
            }
        }
    }

    static void printFormatted(int h, int p, int[][] cells) {
        for (int line = 0; line < h; line++) {
            for (int column = 0; column < p - 1; column++)
                System.out.printf("%d ", cells[line][column]);
            System.out.println(cells[line][p - 1]);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int h = scanner.nextInt();
        int p = scanner.nextInt();
        int f = scanner.nextInt();
        while (h > 0 && p > 0 && f > 0) {
            int[][] cells = getCells(h, p, scanner);
            LinkedList<int[]> vacantSpaces = getVacantSpaces(h, p, cells);
            insertNewBlocks(f, cells, vacantSpaces, scanner);
            printFormatted(h, p, cells);
            h = scanner.nextInt();
            p = scanner.nextInt();
            f = scanner.nextInt();
        }
        scanner.close();
    }
}