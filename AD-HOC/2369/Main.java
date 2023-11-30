import java.util.Scanner;

public class Main {

    static int getWaterBill(int consumption) {
        if (consumption <= 10)
            return 7;
        if (consumption <= 30)
            return 7 + (consumption - 10);
        if (consumption <= 100)
            return 7 + 20 + (consumption - 30) * 2;
        return 7 + 20 + 140 + (consumption - 100) * 5;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n = scanner.nextInt();
        System.out.println(getWaterBill(n));
        scanner.close();
    }
}
