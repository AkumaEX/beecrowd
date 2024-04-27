import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static int[] getGrades(Scanner scanner) {
        int n = scanner.nextInt();
        int[] grades = new int[n];
        for (int i = 0; i < n; i++)
            grades[i] = scanner.nextInt();
        return grades;
    }

    static double percentageAboveAverage(int[] grades) {
        double average = Arrays.stream(grades).reduce(0, Integer::sum) / grades.length;
        double aboveAverage = Arrays.stream(grades).filter(grade -> grade > average).count();
        return 100 * aboveAverage / grades.length;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        while (c-- > 0) {
            int[] grades = getGrades(scanner);
            System.out.printf("%.3f%%\n", percentageAboveAverage(grades));
        }
        scanner.close();
    }
}