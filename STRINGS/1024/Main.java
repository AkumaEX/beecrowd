import java.util.stream.IntStream;
import java.util.Arrays;
import java.util.Scanner;

public class Main {

    private static IntStream firstPass(String text) {
        return text.chars().map(i -> {
            if (Character.isLetter((char) i))
                return i + 3;
            return i;
        });
    }

    private static IntStream secondPass(IntStream intStream) {
        int[] array = intStream.toArray();
        return IntStream.range(0, array.length).map(i -> array[array.length - 1 - i]);
    }

    private static IntStream thirdPass(IntStream intStream) {
        int[] array = intStream.toArray();
        for (int i = (array.length / 2); i < array.length; i++)
            array[i]--;
        return Arrays.stream(array);
    }

    public static String encrypt(String text) {
        IntStream intStream = thirdPass(secondPass(firstPass(text)));
        return intStream.mapToObj(i -> (char) i).collect(StringBuilder::new,
                StringBuilder::appendCodePoint, StringBuilder::append)
                .toString();
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int N = scanner.nextInt();
        scanner.nextLine();
        for (int n = 0; n < N; n++)
            System.out.println(encrypt(scanner.nextLine()));
        scanner.close();
    }
}