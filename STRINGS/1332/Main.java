import java.util.Scanner;

public class Main {
    static int number(String word) {
        if (word.length() > 3)
            return 3;
        if (word.charAt(0) == 'o' && word.charAt(1) == 'n' || word.charAt(0) == 'o' && word.charAt(2) == 'e'
                || word.charAt(1) == 'n' && word.charAt(2) == 'e')
            return 1;
        return 2;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        while (n-- > 0)
            System.out.println(number(scanner.next()));
        scanner.close();
    }
}
