import java.util.Scanner;

public class Main {

    static double getDistance(int x1, int y1, int x2, int y2) {
        return Math.sqrt(Math.pow(x1 - x2, 2) + Math.pow(y1 - y2, 2));
    }

    static int nearest(int n, int[][] balls) {
        double minDistance = getDistance(balls[0][0], balls[0][1], 1420, 2840);
        int nearestBall = 0;
        for (int ball = 1; ball < n + 1; ball++) {
            double distance = getDistance(balls[0][0], balls[0][1], balls[ball][0], balls[ball][1]);
            if (distance < minDistance) {
                minDistance = distance;
                nearestBall = ball;
            }
        }
        return nearestBall;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int c = scanner.nextInt();
        while (c-- > 0) {
            int n = scanner.nextInt();
            int[][] balls = new int[n + 1][2];
            for (int i = 0; i < n + 1; i++) {
                balls[i][0] = scanner.nextInt();
                balls[i][1] = scanner.nextInt();
            }
            System.out.println(nearest(n, balls));
        }
        scanner.close();
    }
}
