import java.util.Scanner;

public class Main {

    static boolean isTheFunniest() {
        Scanner scanner = new Scanner(System.in);
        String vowels = scanner.next().replaceAll("[^aeiou]", "");
        scanner.close();
        return vowels.equals(new StringBuilder(vowels).reverse().toString());
    }

    public static void main(String[] args) {
        System.out.println(isTheFunniest() ? "S" : "N");
    }
}
