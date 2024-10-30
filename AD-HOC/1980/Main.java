import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String s;
        while (!(s = scanner.next()).equals("0")) {
            long factorial = 1;
            for (int num = 1; num <= s.length(); num++)
                factorial *= num;
            System.out.println(factorial);
        }
        scanner.close();
    }
}
