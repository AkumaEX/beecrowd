import java.util.Scanner;

public class Main {

    static int total(int l) {
        return (int) Math.pow(2, 2 * Math.floor(Math.log(l) / Math.log(2)));
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int l = scanner.nextInt();
        System.out.println(total(l));
        scanner.close();
    }
}
