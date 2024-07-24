import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static int gcd(int a, int b) {
        if (b == 0)
            return a;
        return gcd(b, a % b);
    }

    static void formattedPrint(int[] sides) {
        Arrays.sort(sides);
        if (Math.pow(sides[2], 2) == Math.pow(sides[1], 2) + Math.pow(sides[0], 2)) {
            if (gcd(gcd(sides[2], sides[1]), sides[0]) == 1) {
                System.out.println("tripla pitagorica primitiva");
            } else {
                System.out.println("tripla pitagorica");
            }
        } else {
            System.out.println("tripla");
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            int[] sides = IntStream.range(0, 3).map(i -> scanner.nextInt()).toArray();
            formattedPrint(sides);
        }
        scanner.close();
    }
}
