import java.util.Scanner;

public class Main {

    static int[][] fillInitialValues(Scanner scanner) {
        int[][] matrix = new int[9][9];
        for (int i = 0; i < 7; i += 2)
            matrix[6][i] = scanner.nextInt();
        for (int i = 0; i < 9; i += 2)
            matrix[8][i] = scanner.nextInt();
        return matrix;
    }

    static int[][] solveBaseValues(int[][] matrix) {
        // i is the index of the four base triangles
        for (int i = 0; i < 7; i += 2) {
            matrix[8][i + 1] = (matrix[6][i] - matrix[8][i] - matrix[8][i + 2]) / 2;
        }
        return matrix;
    }

    static int[][] fillAllValues(int[][] matrix) {
        for (int line = 7; line >= 0; line--)
            for (int i = 0; i <= line; i++)
                matrix[line][i] = matrix[line + 1][i] + matrix[line + 1][i + 1];
        return matrix;
    }

    static void printPyramid(int[][] matrix) {
        for (int line = 0; line < 9; line++) {
            for (int i = 0; i < line; i++)
                System.out.print(matrix[line][i] + " ");
            System.out.println(matrix[line][line]);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        for (int times = 0; times < n; times++) {
            // top half values of the pyramid aren't necessary
            scanner.nextLine();
            scanner.nextLine();
            scanner.nextLine();
            scanner.nextLine();
            printPyramid(fillAllValues(solveBaseValues(fillInitialValues(scanner))));
        }
        scanner.close();
    }
}