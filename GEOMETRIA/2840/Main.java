import java.util.Scanner;

public class Main {

    static int ballons(int radius, int liters) {
        double pi = 3.1415;
        double volume = (4.0 / 3) * pi * Math.pow(radius, 3);
        return (int) (liters / volume);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int r = scanner.nextInt();
        int l = scanner.nextInt();
        System.out.println(ballons(r, l));
        scanner.close();
    }
    
}
