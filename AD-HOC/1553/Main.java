import java.util.Collection;
import java.util.HashMap;
import java.util.Scanner;
import java.util.stream.IntStream;

public class Main {

    static Collection<Integer> getFrequencies(int[] p) {
        HashMap<Integer, Integer> frequencies = new HashMap<Integer, Integer>();
        for (int question : p) {
            int frequency = frequencies.containsKey(question) ? frequencies.get(question) + 1 : 1;
            frequencies.put(question, frequency);
        }
        return frequencies.values();
    }

    static int getQuestions(Collection<Integer> frequencies, int k) {
        int questions = 0;
        for (int frequency : frequencies) {
            if (frequency >= k)
                questions++;
        }
        return questions;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        int k = scanner.nextInt();
        while (n > 0 && k > 0) {
            int[] p = IntStream.range(0, n).map(i -> scanner.nextInt()).toArray();
            Collection<Integer> frequencies = getFrequencies(p);
            System.out.println(getQuestions(frequencies, k));
            n = scanner.nextInt();
            k = scanner.nextInt();
        }
        scanner.close();
    }
}
