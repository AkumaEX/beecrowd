import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int find(int[] students, int k) {
        int student = students[k - 1];
        return (student == k) ? k : find(students, student);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) > 0) {
            int[] students = IntStream.range(0, n).map(i -> scanner.nextInt()).toArray();
            int k = scanner.nextInt();
            System.out.println(find(students, k));
        }
        scanner.close();
    }
}
