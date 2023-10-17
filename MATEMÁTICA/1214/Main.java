import java.util.Scanner;

public class Main {

    static double percentageAboveAverage(Scanner scanner) {
        int n = scanner.nextInt();
        int[] grades = new int[n];
        double average = 0;
        for (int i = 0; i < n; i++)
            average += grades[i] = scanner.nextInt();
        average /= n;
        int aboveAverage = 0;
        for (int i = 0; i < n; i++)
            if (grades[i] > average)
                aboveAverage++;
        return ((double) aboveAverage / n) * 100;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        for (int times = 0; times < c; times++)
            System.out.printf("%.3f%%\n", percentageAboveAverage(scanner));
        scanner.close();
    }
}