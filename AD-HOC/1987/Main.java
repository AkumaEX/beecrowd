import java.util.Scanner;

public class Main {

    static int digitSumOf(String m) {
        int digitSum = 0;
        for (String digit : m.split("")) {
            digitSum += Integer.valueOf(digit);
        }
        return digitSum;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()) {
            scanner.nextInt();
            String m = scanner.next();
            int digitSum = digitSumOf(m);
            System.out.printf("%d %s\n", digitSum, digitSum % 3 == 0 ? "sim" : "nao");
        }
        scanner.close();
    }
}
