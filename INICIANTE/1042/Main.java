import java.util.Arrays;
import java.util.Scanner;

public class Main {

    static void formattedPrint(int[] sequence) {
        for (int num : sequence)
            System.out.println(num);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] original = new int[3];
        for (int i = 0; i < 3; i++)
            original[i] = scanner.nextInt();
        int[] sorted = original.clone();
        Arrays.sort(sorted);
        formattedPrint(sorted);
        System.out.println();
        formattedPrint(original);
        scanner.close();
    }
}
