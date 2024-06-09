import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int even = 0, times = 5;
        while (times-- > 0)
            if (scanner.nextInt() % 2 == 0)
                even++;
        System.out.printf("%d valores pares\n", even);
        scanner.close();
    }
}
