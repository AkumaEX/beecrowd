import java.util.Scanner;

public class Main {

    static boolean isPossible(String word1, String word2, String word3) {
        int first = -1;
        int second = -1;
        for (int index = 0; index < word3.length(); index++) {
            if (word3.charAt(index) == '_') {
                if (first < 0)
                    first = index;
                else
                    second = index;
            }
        }
        return word1.charAt(first) == word2.charAt(second) || word1.charAt(second) == word2.charAt(first);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        while (c-- > 0) {
            String word1 = scanner.next();
            String word2 = scanner.next();
            String word3 = scanner.next();
            System.out.println(isPossible(word1, word2, word3) ? "Y" : "N");
        }
        scanner.close();
    }
}