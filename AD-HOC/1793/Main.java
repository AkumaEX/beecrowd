import java.util.Scanner;

public class Main {

    static int getActiveTime(int n, Scanner scanner) {
        int activeTime = n * 10;
        int time = scanner.nextInt();
        for (int times = 0; times < n-1; times++) {
            int nextTime = scanner.nextInt();
            int difference = nextTime - time;
            if (difference < 10)
                activeTime -= 10 - difference;
            time = nextTime;
        }
        return activeTime;
    }


    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int n;
        while ((n = scanner.nextInt()) > 0)
            System.out.println(getActiveTime(n, scanner));
        scanner.close();
    }
}