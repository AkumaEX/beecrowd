import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static void formattedPrint(int[] sequence) {
        for (int value : sequence)
            System.out.println(value);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] original = IntStream.range(0, 3).map(i -> scanner.nextInt()).toArray();
        int[] sorted = original.clone();
        Arrays.sort(sorted);
        formattedPrint(sorted);
        System.out.println();
        formattedPrint(original);
        scanner.close();
    }
}
